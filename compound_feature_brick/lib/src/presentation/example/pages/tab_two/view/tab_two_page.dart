part of 'package:compound_feature_brick/src/presentation/example/widgets/parts.dart';

/// {@template step_two_page}
/// A description for TabTwoPage
/// {@endtemplate}
class _TabTwoPage extends StatelessWidget {
  /// {@macro step_two_page}
  const _TabTwoPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _TabTwoBloc(),
      child: const Scaffold(
        // appBar: AppBar(
        //   title: const Text('Tab Two'),
        // ),
        body: _TabTwoView(),
      ),
    );
  }
}

// NOTE: Declare all BlocListeners of TabTwo here to handle navigation,
// showing dialogs, etc.
/// {@template step_two_view}
/// Displays the Body of TabTwoView
/// {@endtemplate}
///
class _TabTwoView extends StatelessWidget {
  /// {@macro step_two_view}
  const _TabTwoView();

  @override
  Widget build(BuildContext context) {
    return const _TabTwoBody();
  }
}
