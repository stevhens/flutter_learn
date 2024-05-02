import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/bloc_dio_sample/repository.dart';
import 'package:flutter_learn/bloc_dio_sample/user_bloc.dart';
import 'package:flutter_learn/bloc_dio_sample/user_event.dart';
import 'package:flutter_learn/bloc_dio_sample/user_state.dart';
import 'package:flutter_learn/samples/customui_samples.dart';

class MyDioBlocApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<UserBloc>(
            create: (context) => UserBloc(UserRepository()),
          ),
        ],
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List App'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  if (state is UserLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is UserLoadedState) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.users.length,
                      itemBuilder: (context, index) {
                        return MyCustomItemCell(
                          image: state.users[index].avatar ?? '',
                          title: state.users[index].firstName ?? '',
                          subtitle: state.users[index].email ?? '',
                        );
                      },
                    );
                  } else if (state is UserErrorState) {
                    return Text(
                      'error ${state.error}',
                      style: const TextStyle(fontSize: 24),
                    );
                  } else {
                    return const Text(
                      'Users empty, try reloading',
                      style: TextStyle(fontSize: 24),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<UserBloc>().add(LoadUserEvent()),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
