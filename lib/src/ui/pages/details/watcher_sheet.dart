import 'package:anitrack/i18n/strings.g.dart';
import 'package:anitrack/src/data/anime_watcher.dart';
import 'package:anitrack/src/ui/bloc/details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsWatcherSheet extends StatefulWidget {
  const DetailsWatcherSheet({required this.watchers, super.key});

  // The watchers to show.
  final List<AnimeWatcher> watchers;

  @override
  State<StatefulWidget> createState() => DetailsWatcherSheetState();
}

class DetailsWatcherSheetState extends State<DetailsWatcherSheet> {
  /// List of all watchers.
  late List<AnimeWatcher> _baseWatcherList;

  /// List of names to show.
  late List<AnimeWatcher> _filteredWatchers;

  /// Controller for the text field.
  final TextEditingController _controller = TextEditingController();

  void _filterList() {
    setState(() {
      _filteredWatchers = widget.watchers
          .where(
            (item) => item.name.toLowerCase().contains(
              _controller.text.toLowerCase(),
            ),
          )
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    _baseWatcherList = widget.watchers;
    _filteredWatchers = _baseWatcherList;
    _controller.addListener(_filterList);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool _canAdd() {
    return _controller.text.isNotEmpty &&
        _filteredWatchers.every(
          (item) => item.name.toLowerCase() != _controller.text.toLowerCase(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 1,
      builder: (ctx, scrollController) {
        return Padding(
          padding: const EdgeInsetsGeometry.only(
            top: 18,
          ),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            labelText: t.details.watchingWith.name,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: _canAdd()
                              ? () async {
                                  final watcher = AnimeWatcher(
                                    _controller.text,
                                  );
                                  await context
                                      .read<DetailsBloc>()
                                      .addAnimeWatcher(watcher);
                                  Navigator.of(context).pop(watcher);
                                }
                              : null,
                          child: Text(t.details.watchingWith.add),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SliverList.builder(
                itemBuilder: (ctx, idx) => ListTile(
                  title: Text(_filteredWatchers[idx].name),
                  onTap: () {
                    Navigator.of(context).pop(_filteredWatchers[idx]);
                  },
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () async {
                      final result = await showDialog<bool>(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) => AlertDialog(
                          title: Text(t.details.watchers.removeTitle),
                          content: Text(
                            t.details.watchers.removeBody(
                              watcher: _filteredWatchers[idx].name,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(
                                  context,
                                ).pop(true);
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.red,
                              ),
                              child: Text(
                                t.details.removeButton,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(
                                  context,
                                ).pop(false);
                              },
                              child: Text(
                                t.details.cancelButton,
                              ),
                            ),
                          ],
                        ),
                      );
                      if (result == null || !result) {
                        return;
                      }

                      final watcher = _filteredWatchers[idx];
                      _baseWatcherList.remove(watcher);
                      _filterList();
                      context.read<DetailsBloc>().add(
                        AnimeWatcherDeletedEvent(watcher),
                      );
                    },
                  ),
                ),
                itemCount: _filteredWatchers.length,
              ),
            ],
          ),
        );
      },
    );
  }
}
