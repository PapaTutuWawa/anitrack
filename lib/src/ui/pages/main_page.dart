import 'package:anitrack/src/ui/helpers.dart';
import 'package:flutter/material.dart';

/// A page that renders the anime list and the calendar as nested views.
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
    );
  }
}
