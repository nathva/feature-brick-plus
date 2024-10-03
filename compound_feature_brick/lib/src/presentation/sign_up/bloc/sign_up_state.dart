part of 'sign_up_bloc.dart';

enum SignUpStatus { 
  initial, 
  loading, 
  success, 
  failure;

  bool get isInitial => this == SignUpStatus.initial;
  bool get isLoading => this == SignUpStatus.loading;
  bool get isSuccess => this == SignUpStatus.success;
  bool get isFailure => this == SignUpStatus.failure;
 }

/// {@template sign_up_state}
/// SignUpState description
/// {@endtemplate}
class SignUpState extends Equatable {
  /// {@macro sign_up_state}
  const SignUpState({
    this.status = SignUpStatus.initial,
  });

  /// Status of the state
  final SignUpStatus status;

  @override
  List<Object> get props => [status];

  /// Creates a copy of the current SignUpState with property changes
  SignUpState copyWith({
    SignUpStatus? status,
  }) {
    return SignUpState(
      status: status ?? this.status,
    );
  }
}
