import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';

abstract class BlocRandomTextEvent {}

class BlocRandomTextGenerateEvent extends BlocRandomTextEvent {}

abstract class BlocRandomTextState {}

class BlocRandomTextInitialState extends BlocRandomTextState {}

class BlocRandomTextLoadingState extends BlocRandomTextState {}

class BlocRandomTextLoadedState extends BlocRandomTextState {
  final String value;

  BlocRandomTextLoadedState(this.value);
}

class RandomTextBloc extends Bloc<BlocRandomTextEvent, BlocRandomTextState> {
  RandomTextBloc() : super(BlocRandomTextInitialState()) {
    on<BlocRandomTextGenerateEvent>((event, emit) {
      emit(BlocRandomTextLoadingState());
      final result = _generateRandomText();
      emit(BlocRandomTextLoadedState(result));
    });
  }

  String _generateRandomText() {
    final random = Random();
    final length = random.nextInt(10) + 5;
    return String.fromCharCodes(
        List.generate(length, (index) => random.nextInt(26) + 65));
  }
}

class MyStateManagementBlocApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(providers: [
        BlocProvider<RandomTextBloc>(
          create: (context) => RandomTextBloc(),
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
            BlocBuilder<RandomTextBloc, BlocRandomTextState>(
                builder: (context, state) {
              if (state is BlocRandomTextLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is BlocRandomTextLoadedState) {
                return Text(
                  state.value,
                  style: const TextStyle(fontSize: 24),
                );
              } else {
                return Text(
                  '',
                  style: const TextStyle(fontSize: 24),
                );
              }
            }),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context
                    .read<RandomTextBloc>()
                    .add(BlocRandomTextGenerateEvent());
              },
              child: Text('Generate Random Text'),
            ),
          ],
        ),
      ),
    );
  }
}
