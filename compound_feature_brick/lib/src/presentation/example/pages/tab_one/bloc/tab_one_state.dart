part of 'package:compound_feature_brick/src/presentation/example/view/example_page.dart';

enum _TabOneStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == _TabOneStatus.initial;
  bool get isLoading => this == _TabOneStatus.loading;
  bool get isSuccess => this == _TabOneStatus.success;
  bool get isFailure => this == _TabOneStatus.failure;
}

/// {@template step_one_state}
/// TabOneState description
/// {@endtemplate}
class _TabOneState extends Equatable {
  /// {@macro step_one_state}
  const _TabOneState({
    this.status = _TabOneStatus.initial,
  });

  /// Status of the state
  final _TabOneStatus status;

  @override
  List<Object> get props => [status];

  /// Creates a copy of the current TabOneState with property changes
  _TabOneState copyWith({
    _TabOneStatus? status,
  }) {
    return _TabOneState(
      status: status ?? this.status,
    );
  }
}
