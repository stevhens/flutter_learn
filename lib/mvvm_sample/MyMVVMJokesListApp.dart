import 'package:flutter/material.dart';
import 'package:flutter_learn/mvvm_sample/viewmodels/joke_list_viewmodel.dart';
import 'package:flutter_learn/mvvm_sample/views/joke_list_view.dart';
import 'package:provider/provider.dart';

class MyMVVMJokesListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => JokesViewModel(),
      child: MaterialApp(
        title: 'MVVM Jokes App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: JokesListView(),
      ),
    );
  }
}
