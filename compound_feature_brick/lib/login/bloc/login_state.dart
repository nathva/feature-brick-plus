part of 'login_bloc.dart';

enum LoginStatus { 
  initial, 
  loading, 
  success, 
  failure;

  bool get isInitial => this == LoginStatus.initial;
  bool get isLoading => this == LoginStatus.loading;
  bool get isSuccess => this == LoginStatus.success;
  bool get isFailure => this == LoginStatus.failure;
 }

/// {@template login_state}
/// LoginState description
/// {@endtemplate}
class LoginState extends Equatable {
  /// {@macro login_state}
  const LoginState({
    this.status = LoginStatus.initial,
  });

  /// Status of the state
  final LoginStatus status;

  @override
  List<Object> get props => [status];

  /// Creates a copy of the current LoginState with property changes
  LoginState copyWith({
    LoginStatus? status,
  }) {
    return LoginState(
      status: status ?? this.status,
    );
  }
}
