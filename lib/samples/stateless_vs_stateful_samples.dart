import 'package:flutter/material.dart';

class MyStatelessSampleApp extends StatelessWidget {

  String myValue = "default";

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Stateless Sample"),),
        body: Column(children: [
          TextButton(onPressed: () {
            myValue = "New Value";
          }, child: const Text("Tap to Update")),
          Text(myValue)
        ],)),
    );
  }
}

class MyStatefulSampleApp extends StatefulWidget {

  @override
  State<MyStatefulSampleApp> createState() => _MyStatefulSampleAppState();
}

class _MyStatefulSampleAppState extends State<MyStatefulSampleApp> {
  String myValue = "default";

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Stateful Sample"),),
        body: Column(children: [
          TextButton(onPressed: () {
            setState(() {
              myValue = "New Value";
            });
          }, child: const Text("Tap to Update")),
          Text(myValue)
        ],)),
    );
  }
}