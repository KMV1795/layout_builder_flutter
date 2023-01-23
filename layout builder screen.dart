import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      // Large screens (tablet on landscape mode, desktop, TV)
      if (constraints.maxWidth > 600) {
        return Row(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: constraints.maxWidth * 0.75,
                  color: Colors.white10,
                  child: const Center(
                    child: Text('Container 1'),
                  ),
                ),
                Container(
                  height: 300,
                  width: constraints.maxWidth * 0.75,
                  color: Colors.white24,
                  child: const Center(
                    child: Text('Container 2'),
                  ),
                ),
                Container(
                  height: constraints.maxHeight - 400,
                  width: constraints.maxWidth * 0.75,
                  color: Colors.white38,
                  child: const Center(
                    child: Text('Container 3'),
                  ),
                ),
              ],
            ),
            Container(
              width: constraints.maxWidth * 0.25,
              height: constraints.maxHeight,
              color: Colors.pink,
              child: const Center(
                child: Text('Right Sidebar'),
              ),
            ),
          ],
        );
      }

      // Samll screens
      return Column(
        children: [
          Container(
            height: 100,
            color: Colors.black12,
            child: const Center(
              child: Text('Container 1'),
            ),
          ),
          Container(
            height: 300,
            color: Colors.blueGrey,
            child: const Center(
              child: Text('Container 2'),
            ),
          ),
          Container(
            height: constraints.maxHeight - 400,
            color: Colors.black54,
            child: const Center(
              child: Text('Container 3'),
            ),
          )
        ],
      );
    }));
  }
}