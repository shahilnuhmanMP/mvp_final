
import 'package:flutter/material.dart';

class LinearProgressIndicatorWidget extends StatelessWidget {
  final double percentage;

  const LinearProgressIndicatorWidget({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7, right: 7, bottom: 8, top: 4),
      child: LinearProgressIndicator(
        borderRadius: BorderRadius.circular(5),
        value: percentage,
        backgroundColor: Colors.grey[300],
        color: Colors.black,
        minHeight: 6.0,
      ),
    );
  }
}