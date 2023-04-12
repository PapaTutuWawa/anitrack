import 'dart:math';
import 'package:flutter/material.dart';

class GridItem extends StatefulWidget {
  const GridItem({
    required this.child,
    required this.plusCallback,
    required this.minusCallback,
    super.key,
  });

  final Widget child;

  final void Function() plusCallback;
  final void Function() minusCallback;

  @override
  GridItemState createState() => GridItemState();
}

class GridItemState extends State<GridItem> {
  double _offset = 0;
  double _translationX = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        setState(() {
          _offset += details.delta.dx;
          _translationX = 160 / (1 + exp(-1 * (1 / 30) * _offset)) - 80;
        });
      },
      onHorizontalDragEnd: (_) {
        if (_translationX <= -60) {
          widget.plusCallback();
        } else if (_translationX >= 60) {
          widget.minusCallback();
        }

        // Reset the view
        setState(() {
          _offset = 0;
          _translationX = 0;
        });
      },
      child: Stack(
        children: [
          const Positioned(
            left: 0,
            right: 15,
            top: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.add),
            ),
          ),
          const Positioned(
            left: 15,
            right: 0,
            top: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Icon(Icons.remove),
            ),
          ),
          Positioned(
            left: _translationX,
            right: -1 * _translationX,
            bottom: 0,
            top: 0,
            child: widget.child,
          ),
        ],
      ),
    );
  }
}
