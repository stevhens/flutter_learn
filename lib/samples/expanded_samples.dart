import 'package:flutter/material.dart';

class MyExpandedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Expanded Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExpandedExample(),
    );
  }
}

class ExpandedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Simple Expanded:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 50,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    height: 50,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Expanded with Flex:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.green,
                    height: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
