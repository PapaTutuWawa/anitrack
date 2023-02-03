import 'package:anitrack/src/ui/bloc/anime_list_bloc.dart';
import 'package:anitrack/src/ui/bloc/anime_search_bloc.dart';
import 'package:anitrack/src/ui/bloc/navigation_bloc.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:anitrack/src/ui/pages/anime_list.dart';
import 'package:anitrack/src/ui/pages/anime_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

void main() {
  final navKey = GlobalKey<NavigatorState>();

  GetIt.I.registerSingleton<AnimeListBloc>(AnimeListBloc());
  GetIt.I.registerSingleton<AnimeSearchBloc>(AnimeSearchBloc());
  GetIt.I.registerSingleton<NavigationBloc>(NavigationBloc(navKey));
  
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AnimeListBloc>(
          create: (_) => GetIt.I.get<AnimeListBloc>(),
        ),
        BlocProvider<AnimeSearchBloc>(
          create: (_) => GetIt.I.get<AnimeSearchBloc>(),
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
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AniTrack',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      navigatorKey: navKey,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
          case animeListRoute: return AnimeListPage.route;
          case animeSearchRoute: return AnimeSearchPage.route;
        }

        return null;
      },
    );
  }
}
