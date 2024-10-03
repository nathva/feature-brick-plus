part of 'example_bloc.dart';

enum ExampleStatus { 
  initial, 
  loading, 
  success, 
  failure;

  bool get isInitial => this == ExampleStatus.initial;
  bool get isLoading => this == ExampleStatus.loading;
  bool get isSuccess => this == ExampleStatus.success;
  bool get isFailure => this == ExampleStatus.failure;
 }

/// {@template example_state}
/// ExampleState description
/// {@endtemplate}
class ExampleState extends Equatable {
  /// {@macro example_state}
  const ExampleState({
    this.status = ExampleStatus.initial,
  });

  /// Status of the state
  final ExampleStatus status;

  @override
  List<Object> get props => [status];

  /// Creates a copy of the current ExampleState with property changes
  ExampleState copyWith({
    ExampleStatus? status,
  }) {
    return ExampleState(
      status: status ?? this.status,
    );
  }
}
