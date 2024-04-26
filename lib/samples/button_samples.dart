import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Button Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonExample(),
    );
  }
}

class ButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Examples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Add onPressed action here
              },
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Add onPressed action here
              },
              child: Text('Outlined Button'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Add onPressed action here
              },
              child: Text('Text Button'),
            ),
            SizedBox(height: 20),
            IconButton(
              onPressed: () {
                // Add onPressed action here
              },
              icon: Icon(Icons.add),
              tooltip: 'IconButton',
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Add onPressed action here
              },
              icon: Icon(Icons.star),
              label: Text('Elevated Button with Icon'),
            ),
            SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: () {
                // Add onPressed action here
              },
              icon: Icon(Icons.star),
              label: Text('Outlined Button with Icon'),
            ),
            SizedBox(height: 20),
            TextButton.icon(
              onPressed: () {
                // Add onPressed action here
              },
              icon: Icon(Icons.star),
              label: Text('Text Button with Icon'),
            ),
          ],
        ),
      ),
    );
  }
}
