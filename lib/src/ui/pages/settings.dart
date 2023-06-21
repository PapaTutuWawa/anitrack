import 'package:anitrack/i18n/strings.g.dart';
import 'package:anitrack/src/ui/bloc/settings_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static MaterialPageRoute<dynamic> get route => MaterialPageRoute<dynamic>(
        builder: (_) => const SettingsPage(),
        settings: const RouteSettings(
          name: settingsRoute,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            return !state.importSpinnerVisible;
          },
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(t.settings.title),
                  ),
                  body: ListView(
                    children: [
                      ListTile(
                        title: Text(t.settings.importAnime),
                        subtitle: Text(t.settings.importAnimeDesc),
                        onTap: () async {
                          // Pick the file
                          final result = await FilePicker.platform.pickFiles();
                          if (result == null) return;

                          if (!result.files.first.path!.endsWith('.xml.gz')) {
                            await showDialog<void>(
                              context: context,
                              builder: (_) => AlertDialog(
                                title: Text(t.settings.invalidAnimeListTitle),
                                content: Text(t.settings.invalidAnimeListBody),
                              ),
                            );
                            return;
                          }

                          GetIt.I.get<SettingsBloc>().add(
                                AnimeListImportedEvent(
                                  result.files.first.path!,
                                  ImportListType.mal,
                                ),
                              );
                        },
                      ),
                      ListTile(
                        title: Text(t.settings.importManga),
                        subtitle: Text(t.settings.importMangaDesc),
                        onTap: () async {
                          // Pick the file
                          final result = await FilePicker.platform.pickFiles();
                          if (result == null) return;

                          if (!result.files.first.path!.endsWith('.xml.gz')) {
                            await showDialog<void>(
                              context: context,
                              builder: (_) => AlertDialog(
                                title: Text(t.settings.invalidMangaListTitle),
                                content: Text(t.settings.invalidMangaListBody),
                              ),
                            );
                            return;
                          }

                          GetIt.I.get<SettingsBloc>().add(
                                MangaListImportedEvent(
                                  result.files.first.path!,
                                  ImportListType.mal,
                                ),
                              );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              if (state.importSpinnerVisible)
                const Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: ModalBarrier(
                    dismissible: false,
                    color: Colors.black54,
                  ),
                ),
              if (state.importSpinnerVisible)
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade800,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(25),
                              child: CircularProgressIndicator(),
                            ),
                            Text(
                              t.settings.importIndicator(
                                current: state.importCurrent,
                                total: state.importTotal,
                              ),
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
