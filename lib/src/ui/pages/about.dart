import 'package:anitrack/i18n/strings.g.dart';
import 'package:anitrack/licenses.g.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    super.key,
  });

  static MaterialPageRoute<dynamic> get route => MaterialPageRoute<dynamic>(
        builder: (_) => const AboutPage(),
        settings: const RouteSettings(
          name: aboutRoute,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.about.title),
      ),
      body: ListView.builder(
        itemCount: ossLicenses.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'AniTrack',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ElevatedButton(
                          onPressed: () async {
                            await launchUrl(
                              Uri.parse(
                                'https://codeberg.org/PapaTutuWawa/anitrack',
                              ),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: Text(t.about.source),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ElevatedButton(
                          onPressed: () async {
                            final licenseText = await rootBundle.loadString(
                              'LICENSE',
                            );
                            await showDialog<void>(
                              context: context,
                              builder: (context) {
                                return SimpleDialog(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Text(licenseText),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text(t.about.license),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }

          final dep = ossLicenses[index - 1];
          if (!dep.isDirectDependency) return Container();

          return ListTile(
            title: Text(dep.name),
            onTap: () {
              showDialog<void>(
                context: context,
                builder: (context) => AlertDialog(
                  content: SingleChildScrollView(
                    child: Text(dep.license ?? ''),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(t.about.close),
                    ),
                    if (dep.repository != null)
                      TextButton(
                        onPressed: () async {
                          await launchUrl(
                            Uri.parse(dep.repository!),
                            mode: LaunchMode.externalApplication,
                          );
                        },
                        child: Text(t.about.source),
                      ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
