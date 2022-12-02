import 'package:flutter/material.dart';
import 'package:stories/utils/load_bar.dart';

class StoryBar extends StatelessWidget {
  List<double> percentWatched = [];

  StoryBar({super.key, required this.percentWatched});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
      child: Row(
        children: [
          Expanded(
            child: LoadBar(percentWatched: percentWatched[0]),
          ),
          Expanded(
            child: LoadBar(percentWatched: percentWatched[1]),
          ),
          Expanded(
            child: LoadBar(percentWatched: percentWatched[2]),
          ),
        ],
      ),
    );
  }
}
