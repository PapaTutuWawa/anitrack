import 'dart:io';
import 'package:anitrack/licenses.g.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  AboutPage({
    super.key,
  });

  static MaterialPageRoute<dynamic> get route => MaterialPageRoute<dynamic>(
    builder: (_) => AboutPage(),
    settings: const RouteSettings(
      name: aboutRoute,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: ListView.builder(
        itemCount: ossLicenses.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'AniTrack',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),

                  ElevatedButton(
                    onPressed: () async {
                      await launchUrl(
                        Uri.parse('https://codeberg.org/PapaTutuWawa/anitrack'),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    child: Text('Source')
                  ),
                ],
              ),
            );
          }

          final dep = ossLicenses[index - 1];
          if (!dep.isDirectDependency) return Container();

          return ListTile(
            title: Text(dep.name),
            onTap: () async {
              if (dep.repository == null) return;

              await launchUrl(
                Uri.parse(dep.repository!),
                mode: LaunchMode.externalApplication,
              );
            },
          );
        },
      ),
    );
  }
}
