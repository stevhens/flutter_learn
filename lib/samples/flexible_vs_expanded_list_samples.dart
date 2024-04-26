import 'package:flutter/material.dart';

class MyFlexiblevsExpandedListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flexible vs Expanded Example'),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Flexible List
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Item ${index + 1} (Flexible)'),
                    );
                  },
                ),
              ),
            ),
            // Expanded List
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Item ${index + 1} (Expanded)'),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
