part of 'package:compound_feature_brick/src/presentation/example/widgets/parts.dart';

/// {@template step_one_page}
/// A description for TabOnePage
/// {@endtemplate}
class _TabOnePage extends StatelessWidget {
  /// {@macro step_one_page}
  const _TabOnePage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _TabOneBloc(),
      child: const Scaffold(
        // appBar: AppBar(
        //   title: const Text('TabOne'),
        // ),
        body: _TabOneView(),
      ),
    );
  }
}

// NOTE: Declare all BlocListeners of TabOne here to handle navigation,
// showing dialogs, etc.
/// {@template step_one_view}
/// Displays the Body of _TabOneView
/// {@endtemplate}
///
class _TabOneView extends StatelessWidget {
  /// {@macro step_one_view}
  const _TabOneView();

  @override
  Widget build(BuildContext context) {
    return const _TabOneBody();
  }
}
