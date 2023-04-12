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
                    title: const Text('Settings'),
                  ),
                  body: ListView(
                    children: [
                      ListTile(
                        title: const Text('Import anime list'),
                        subtitle: const Text(
                          'Import anime list exported from MyAnimeList.',
                        ),
                        onTap: () async {
                          // Pick the file
                          final result = await FilePicker.platform.pickFiles();
                          if (result == null) return;

                          if (!result.files.first.path!.endsWith('.xml.gz')) {
                            await showDialog<void>(
                              context: context,
                              builder: (_) => const AlertDialog(
                                title: Text('Invalid anime list'),
                                content: Text(
                                  'The selected file is not a MAL anime list. It lacks the ".xml.gz" suffix.',
                                ),
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
                        title: const Text('Import manga list'),
                        subtitle: const Text(
                          'Import manga list exported from MyAnimeList.',
                        ),
                        onTap: () async {
                          // Pick the file
                          final result = await FilePicker.platform.pickFiles();
                          if (result == null) return;

                          if (!result.files.first.path!.endsWith('.xml.gz')) {
                            await showDialog<void>(
                              context: context,
                              builder: (_) => const AlertDialog(
                                title: Text('Invalid manga list'),
                                content: Text(
                                  'The selected file is not a MAL manga list. It lacks the ".xml.gz" suffix.',
                                ),
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
                              '${state.importCurrent} of ${state.importTotal}',
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
