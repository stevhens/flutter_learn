import 'package:flutter/material.dart';

class MyFlexiblevsExpandedTextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                buildExpanded(),
                buildFlexible(),
              ],
            ),
            Row(
              children: <Widget>[
                buildExpanded(),
                buildExpanded(),
              ],
            ),
            Row(
              children: <Widget>[
                buildFlexible(),
                buildFlexible(),
                buildFlexible(),
                buildFlexible(),
              ],
            ),
            Row(
              children: <Widget>[
                buildExpanded(),
                buildExpanded(),
                buildExpanded(),
                buildExpanded(),
              ],
            ),
            Row(
              children: <Widget>[
                buildFlexible(),
                buildFlexible(),
                buildExpanded(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExpanded() {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        margin: EdgeInsets.all(4),
        child: Center(
          child: Text(
            'Expanded',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Widget buildFlexible() {
    return Flexible(
      child: Container(
        margin: EdgeInsets.all(4),
        child: IntrinsicWidth(
          child: Container(
            color: Colors.green,
            child: Center(
              child: Text(
                'Flexible',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
