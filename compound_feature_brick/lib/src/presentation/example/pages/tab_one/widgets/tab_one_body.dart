part of 'package:compound_feature_brick/src/presentation/example/view/example_page.dart';

// NOTE: Declare all the UI widgets here, including BlocBuilders.
/// {@template step_one_body}
/// Body of the TabOnePage.
/// {@endtemplate}
class _TabOneBody extends StatelessWidget {
  /// {@macro step_one_body}
  const _TabOneBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<_TabOneBloc, _TabOneState>(
      builder: (context, state) {
        return const Center(child: Text('TabOnePage'));
      },
    );
  }
}
