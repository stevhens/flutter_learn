import 'package:flutter/material.dart';

class MyRowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Row Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RowExample(),
    );
  }
}

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Simple Row:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(
                  color: Colors.red,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.green,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Row with MainAxisAlignment:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.red,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.green,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Row with CrossAxisAlignment:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  color: Colors.red,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue,
                  width: 50,
                  height: 70,
                ),
                Container(
                  color: Colors.green,
                  width: 50,
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
