{
  description = "AniTrack";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    android-nixpkgs.url = "github:tadfisher/android-nixpkgs";
  };

  outputs = { self, nixpkgs, android-nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system: let
    pkgs = import nixpkgs {
      inherit system;
      config = {
        android_sdk.accept_license = true;
        allowUnfree = true;
      };
    };
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
      platforms-android-30
      platforms-android-31
      platforms-android-33
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
  });
}
