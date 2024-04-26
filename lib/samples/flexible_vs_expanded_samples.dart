import 'package:flutter/material.dart';

class MyFlexiblevsExpandedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flex Example'),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
                height: 100,
                child: Center(
                  child: Text(
                    'Flexible',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
                height: 50,
                child: Center(
                  child: Text(
                    'Expanded',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                    child: Center(
                      child: Text(
                        'Flexible 1',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    child: Center(
                      child: Text(
                        'Flexible 2',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.orange,
                    height: 100,
                    child: Center(
                      child: Text(
                        'Expanded 1',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.purple,
                    height: 100,
                    child: Center(
                      child: Text(
                        'Expanded 2',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
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
