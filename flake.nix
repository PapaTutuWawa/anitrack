{
  description = "AniTrack";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    android-nixpkgs.url = "github:tadfisher/android-nixpkgs";
    bab.url = "git+https://codeberg.org/PapaTutuWawa/bits-and-bytes.git";
  };

  outputs = { self, nixpkgs, android-nixpkgs, flake-utils, bab }: flake-utils.lib.eachDefaultSystem (system: let
    pkgs = import nixpkgs {
      inherit system;
      config = {
        android_sdk.accept_license = true;
        allowUnfree = true;
      };
    };
    lib = pkgs.lib;
    babPkgs = bab.packages."${system}";
    pinnedJDK = pkgs.jdk17;

    # Everything to make Flutter happy
    sdk = android-nixpkgs.sdk.${system} (sdkPkgs: with sdkPkgs; [
      cmdline-tools-latest
      build-tools-30-0-3
      build-tools-33-0-2
      build-tools-34-0-0
      platform-tools
      emulator
      patcher-v4
      #platforms-android-30
      platforms-android-31
      platforms-android-33
      platforms-android-34
    ]);
  in {
    devShell = pkgs.mkShell {
      buildInputs = with pkgs; [
        # Android
        sdk

        # Flutter
        flutter dart scrcpy pinnedJDK

        # Code hygiene
	      gitlint
      ];

      JAVA_HOME = pinnedJDK;
      ANDROID_HOME = "${sdk}/share/android-sdk";
      ANDROID_SDK_ROOT = "${sdk}/share/android-sdk";

      # Fix an issue with Flutter using an older version of aapt2, which does not know
      # an used parameter.
      GRADLE_OPTS = "-Dorg.gradle.project.android.aapt2FromMavenOverride=${sdk}/share/android-sdk/build-tools/34.0.0/aapt2";
    };

    apps = let
      providerArg = pkgs.writeText "provider-arg.cfg" ''
        name = OpenSC-PKCS11
        description = SunPKCS11 via OpenSC
        library = ${pkgs.opensc}/lib/opensc-pkcs11.so
        slotListIndex = 0
      '';
      mkBuildScript = skipBuild: pkgs.writeShellScript "build-anitrack.sh" ''
        ${babPkgs.flutter-build}/bin/flutter-build \
          --name AniTrack \
          --not-signed \
          --zipalign ${sdk}/share/android-sdk/build-tools/34.0.0/zipalign \
          --apksigner ${sdk}/share/android-sdk/build-tools/34.0.0/apksigner \
          --provider-config ${providerArg} ${lib.optionalString skipBuild "--skip-build"}
      '';
    in {
      # Skip the build and just sign
      onlySign = {
        type = "app";
        program = "${mkBuildScript true}";
      };

      # Build everything and sign
      build = {
        type = "app";
        program = "${mkBuildScript false}";
      };
    };
  });
}
