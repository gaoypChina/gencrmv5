part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    //this.user = InfoUser.empty
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated() : this._(status: AuthenticationStatus.authenticated);

  const AuthenticationState.unauthenticated() : this._(status: AuthenticationStatus.unauthenticated);

  final AuthenticationStatus status;

  //final InfoUser user;

  @override
  List<Object> get props => [status];
}

