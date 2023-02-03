import 'package:flutter/material.dart';

/// An icon that is below an anime list item
class SwipeIcon extends StatelessWidget {
  const SwipeIcon(
    this.icon, {
    super.key,
  });

  /// The icon to display
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Icon(
        icon,
        size: 32,
      ),
    );
  }
}
