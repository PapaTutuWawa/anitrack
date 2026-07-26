import 'package:anitrack/i18n/strings.g.dart';
import 'package:anitrack/src/service/anilist/anilist_client.dart';
import 'package:anitrack/src/service/database.dart';
import 'package:anitrack/src/ui/bloc/anime_list_bloc.dart';
import 'package:anitrack/src/ui/bloc/anime_search_bloc.dart';
import 'package:anitrack/src/ui/bloc/calendar_bloc.dart';
import 'package:anitrack/src/ui/bloc/details_bloc.dart';
import 'package:anitrack/src/ui/bloc/navigation_bloc.dart';
import 'package:anitrack/src/ui/bloc/settings_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/pages/about.dart';
import 'package:anitrack/src/ui/pages/anime_list.dart';
import 'package:anitrack/src/ui/pages/anime_search.dart';
import 'package:anitrack/src/ui/pages/calendar.dart';
import 'package:anitrack/src/ui/pages/details/details.dart';
import 'package:anitrack/src/ui/pages/settings.dart';
import 'package:anitrack/src/ui/widgets/shell_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

void main() async {
  // Initialize the widgets binding for sqflite
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the database
  final database = DatabaseService();
  await database.initialize();

  // Register singletons
  GetIt.I.registerSingleton<DatabaseService>(database);
  GetIt.I.registerSingleton<AnimeListBloc>(AnimeListBloc());
  GetIt.I.registerSingleton<AnimeSearchBloc>(AnimeSearchBloc());
  GetIt.I.registerSingleton<DetailsBloc>(DetailsBloc());
  GetIt.I.registerSingleton<NavigationBloc>(NavigationBloc());
  GetIt.I.registerSingleton<SettingsBloc>(SettingsBloc());
  GetIt.I.registerSingleton<CalendarBloc>(CalendarBloc());
  GetIt.I.registerSingleton<AniListClient>(AniListClient());

  // Load animes
  GetIt.I.get<AnimeListBloc>().add(
    AnimesLoadedEvent(),
  );

  WidgetsFlutterBinding.ensureInitialized();
  await LocaleSettings.useDeviceLocale();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AnimeListBloc>(
          create: (_) => GetIt.I.get<AnimeListBloc>(),
        ),
        BlocProvider<AnimeSearchBloc>(
          create: (_) => GetIt.I.get<AnimeSearchBloc>(),
        ),
        BlocProvider<DetailsBloc>(
          create: (_) => GetIt.I.get<DetailsBloc>(),
        ),
        BlocProvider<NavigationBloc>(
          create: (_) => GetIt.I.get<NavigationBloc>(),
        ),
        BlocProvider<SettingsBloc>(
          create: (_) => GetIt.I.get<SettingsBloc>(),
        ),
        BlocProvider<CalendarBloc>(
          create: (_) => GetIt.I.get<CalendarBloc>(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  /// The router to attach to the main app.
  final _router = GoRouter(
    initialLocation: animeListRoute,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return ShellWrapper(state: state, child: child);
        },
        routes: [
          GoRoute(
            path: animeListRoute,
            builder: (context, state) => const AnimeListPage(),
          ),
          GoRoute(
            path: calendarRoute,
            builder: (context, state) => const CalendarPage(),
          ),
        ],
      ),
      GoRoute(
        path: animeSearchRoute,
        builder: (context, state) => const AnimeSearchPage(),
      ),
      GoRoute(
        path: detailsRoute,
        builder: (context, state) => const DetailsPage(),
      ),
      GoRoute(
        path: aboutRoute,
        builder: (context, state) => const AboutPage(),
      ),
      GoRoute(
        path: settingsRoute,
        builder: (context, state) => const SettingsPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return BlocListener<NavigationBloc, NavigationState>(
      listener: (context, state) {
        if (state is NoopNavigationState) {
          // NOOP
        } else if (state is PushNavigationState) {
          _router.go(state.destination);
        } else if (state is GoNavigationState) {
          _router.push(state.destination);
        } else if (state is PoppedNavigationState) {
          _router.pop();
        }
      },
      child: MaterialApp.router(
        title: 'AniTrack',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        routerConfig: _router,
      ),
    );
  }
}
