import 'package:flutter/material.dart';

class MyFlexibleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Flexible Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlexibleExample(),
    );
  }
}

class FlexibleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Simple Flexible:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.red,
                    height: 50,
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.green,
                    height: 50,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Flexible with Flex:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    height: 50,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.green,
                    height: 50,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Flexible with Fit:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.red,
                    height: 50,
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
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
