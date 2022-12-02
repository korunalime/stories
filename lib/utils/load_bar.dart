import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LoadBar extends StatelessWidget {
  double percentWatched = 0;

  LoadBar({super.key, required this.percentWatched});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      lineHeight: 15,
      barRadius: const Radius.circular(15),
      percent: percentWatched,
      progressColor: Colors.green[300],
      backgroundColor: Colors.grey[300],
    );
  }
}
