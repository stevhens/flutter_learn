import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/bloc_dio_retrofit_sample/repository/repository.dart';
import 'package:flutter_learn/bloc_dio_retrofit_sample/ui/bloc/user_event.dart';
import 'package:flutter_learn/bloc_dio_retrofit_sample/ui/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super(UserInitialState()) {
    on<LoadUserEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        final users = await _userRepository.getUsers();
        emit(UserLoadedState(users));
      } catch (e) {
        emit(UserErrorState(e.toString()));
      }
    });
  }
}
