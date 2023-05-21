part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitiateState extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthLoadingState extends AuthState {
  @override
  List<Object?> get props =>[];
}

class AuthResponseState extends AuthState {

  Either<String, String> reponse;
  AuthResponseState(this.reponse);

  @override
  List<Object?> get props => [];
}
