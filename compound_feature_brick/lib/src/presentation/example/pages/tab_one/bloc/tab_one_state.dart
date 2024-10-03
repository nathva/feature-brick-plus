part of 'package:compound_feature_brick/src/presentation/example/widgets/parts.dart';

enum TabOneStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == TabOneStatus.initial;
  bool get isLoading => this == TabOneStatus.loading;
  bool get isSuccess => this == TabOneStatus.success;
  bool get isFailure => this == TabOneStatus.failure;
}

/// {@template step_one_state}
/// TabOneState description
/// {@endtemplate}
class _TabOneState extends Equatable {
  /// {@macro step_one_state}
  const _TabOneState({
    this.status = TabOneStatus.initial,
  });

  /// Status of the state
  final TabOneStatus status;

  @override
  List<Object> get props => [status];

  /// Creates a copy of the current TabOneState with property changes
  _TabOneState copyWith({
    TabOneStatus? status,
  }) {
    return _TabOneState(
      status: status ?? this.status,
    );
  }
}
