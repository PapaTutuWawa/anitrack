const _weekdays = [
  'Mondays',
  'Tuesdays',
  'Wednesdays',
  'Thursdays',
  'Fridays',
  'Saturdays',
  'Sundays',
];

String getAiringDay(int timestamp) {
  return _weekdays[DateTime.fromMillisecondsSinceEpoch(timestamp).weekday];
}
