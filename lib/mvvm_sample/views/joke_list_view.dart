import 'package:flutter/material.dart';
import 'package:flutter_learn/mvvm_sample/viewmodels/joke_list_viewmodel.dart';
import 'package:provider/provider.dart';

class JokesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<JokesViewModel>(context);

    Widget body;
    if (viewModel.isLoading) {
      body = const Center(
        child: CircularProgressIndicator(),
      );
    } else if (viewModel.error != null) {
      body = Center(
        child: Text(viewModel.error!),
      );
    } else {
      body = RefreshIndicator(
        onRefresh: () => viewModel.fetchJokes(),
        child: ListView.builder(
          itemCount: viewModel.jokes.length,
          itemBuilder: (context, index) {
            final joke = viewModel.jokes[index];
            return ListTile(
              title: Text(joke.setup),
              subtitle: Text(joke.punchline),
            );
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Jokes'),
      ),
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: () => viewModel.fetchJokes(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}