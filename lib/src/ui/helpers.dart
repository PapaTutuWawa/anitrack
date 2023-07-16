import 'package:anitrack/i18n/strings.g.dart';
import 'package:anitrack/src/ui/constants.dart';
import 'package:flutter/material.dart';

Widget getDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xffcf4aff),
          ),
          child: Text(
            'AniTrack',
            style: TextStyle(
              color: Color(0xff232323),
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.list),
          title: Text(t.content.list),
          onTap: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              animeListRoute,
              (_) => false,
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.calendar_today),
          title: Text(t.calendar.calendar),
          onTap: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              calendarRoute,
              (_) => false,
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: Text(t.settings.title),
          onTap: () {
            Navigator.of(context).pushNamed(settingsRoute);
          },
        ),
        ListTile(
          leading: const Icon(Icons.info),
          title: Text(t.about.title),
          onTap: () {
            Navigator.of(context).pushNamed(aboutRoute);
          },
        ),
      ],
    ),
  );
}
