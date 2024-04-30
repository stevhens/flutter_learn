import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';

class TextCubit extends Cubit<String> {
  TextCubit() : super('');

  void generateRandomText() {
    final random = Random();
    final length = random.nextInt(10) + 5;
    final result = String.fromCharCodes(
        List.generate(length, (index) => random.nextInt(26) + 65));
    emit(result);
  }

  @override
  void onChange(Change<String> change) {
    super.onChange(change);
    debugPrint(change.currentState);
    debugPrint(change.nextState);
  }
}

class MyStateManagementCubitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(providers: [
        BlocProvider(
          create: (context) => TextCubit(),
        ),
      ], child: RandomTextPage()),
    );
  }
}

class RandomTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Text App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<TextCubit, String>(builder: (context, state) {
              return Text(
                state,
                style: TextStyle(fontSize: 24),
              );
            }),
            // BlocConsumer<TextCubit, String>(listener: (context, state) {
            //   final textCubit = context.read<TextCubit>();

            //   // Do Somethin here: Send a notification, consume an endpoint, analytics, etc.
            // }, builder: (context, state) {
            //   final textCubit = context.read<TextCubit>();
            //   return Text(
            //     textCubit.state,
            //     style: TextStyle(fontSize: 24),
            //   );
            // }),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<TextCubit>().generateRandomText();
              },
              child: Text('Generate Random Text'),
            ),
          ],
        ),
      ),
    );
  }
}
