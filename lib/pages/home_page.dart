import 'package:flutter/material.dart';
import '../utils/story_circles.dart';
import 'story_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openStory() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const StoryPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[300],
        title: const Text('S T O R I E S'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return StoryCircles(
                  function: _openStory,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
