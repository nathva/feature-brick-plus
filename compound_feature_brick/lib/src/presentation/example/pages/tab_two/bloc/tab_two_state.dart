part of 'package:compound_feature_brick/src/presentation/example/view/example_page.dart';

enum TabTwoStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == TabTwoStatus.initial;
  bool get isLoading => this == TabTwoStatus.loading;
  bool get isSuccess => this == TabTwoStatus.success;
  bool get isFailure => this == TabTwoStatus.failure;
}

/// {@template step_two_state}
/// TabTwoState description
/// {@endtemplate}
class _TabTwoState extends Equatable {
  /// {@macro step_two_state}
  const _TabTwoState({
    this.status = TabTwoStatus.initial,
  });

  /// Status of the state
  final TabTwoStatus status;

  @override
  List<Object> get props => [status];

  /// Creates a copy of the current TabTwoState with property changes
  _TabTwoState copyWith({
    TabTwoStatus? status,
  }) {
    return _TabTwoState(
      status: status ?? this.status,
    );
  }
}
