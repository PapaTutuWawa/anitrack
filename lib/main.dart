import 'package:anitrack/src/service/database.dart';
import 'package:anitrack/src/ui/bloc/anime_list_bloc.dart';
import 'package:anitrack/src/ui/bloc/anime_search_bloc.dart';
import 'package:anitrack/src/ui/bloc/details_bloc.dart';
import 'package:anitrack/src/ui/bloc/navigation_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/pages/anime_list.dart';
import 'package:anitrack/src/ui/pages/anime_search.dart';
import 'package:anitrack/src/ui/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

void main() async {
  final navKey = GlobalKey<NavigatorState>();

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
  GetIt.I.registerSingleton<NavigationBloc>(NavigationBloc(navKey));

  // Load animes
  GetIt.I.get<AnimeListBloc>().add(
    AnimesLoadedEvent(),
  );
  
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
      ],
      child: MyApp(navKey),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp(
    this.navKey, {
    super.key,
  });

  final GlobalKey<NavigatorState> navKey;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      navigatorKey: navKey,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
          case animeListRoute: return AnimeListPage.route;
          case animeSearchRoute: return AnimeSearchPage.route;
          case detailsRoute: return DetailsPage.route;
        }

        return null;
      },
    );
  }
}
