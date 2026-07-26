import 'package:anitrack/i18n/strings.g.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/helpers.dart';
import 'package:anitrack/src/ui/pages/anime_list.dart';
import 'package:anitrack/src/ui/pages/calendar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellWrapper extends StatelessWidget {
  const ShellWrapper({
    required this.state,
    required this.child,
    super.key,
  });

  /// The current router state.
  final GoRouterState state;

  /// The child to show.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final currentPath = GoRouterState.of(context).uri.toString();

    AppBar? appBar;
    Widget? drawer;
    Widget? fab;
    Widget? bottomNavigationBar;
    switch (currentPath) {
      case animeListRoute:
        drawer = getDrawer(context);
        appBar = AnimeListPage.buildAppBar(context);
        bottomNavigationBar = AnimeListPage.buildBottomNavigationBar(context);
        fab = AnimeListPage.buildFab();
      case calendarRoute:
        drawer = getDrawer(context);
        appBar = CalendarPage.buildAppBar(context);
    }

    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
      floatingActionButton: fab,
      body: child,
    );
  }
}
