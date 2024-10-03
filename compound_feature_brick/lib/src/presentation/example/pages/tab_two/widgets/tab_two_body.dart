part of 'package:compound_feature_brick/src/presentation/example/widgets/parts.dart';

// NOTE: Declare all the UI widgets here, including BlocBuilders.
/// {@template step_two_body}
/// Body of the TabTwoPage.
/// {@endtemplate}
class _TabTwoBody extends StatelessWidget {
  /// {@macro step_two_body}
  const _TabTwoBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<_TabTwoBloc, _TabTwoState>(
      builder: (context, state) {
        return const Center(child: Text('TabTwoPage'));
      },
    );
  }
}
