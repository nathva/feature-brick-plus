// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'package:compound_feature_brick/src/presentation/example/view/example_page.dart';

// NOTE: Declare all the UI widgets here, including BlocBuilders.
/// {@template example_body}
/// Body of the ExamplePage.
/// {@endtemplate}
class _ExampleBody extends StatelessWidget {
  /// {@macro example_body}
  const _ExampleBody({
    required TabController tabController,
    super.key,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExampleBloc, ExampleState>(
      builder: (context, state) {
        return TabBarView(
          controller: _tabController,
          children: const [
            _TabOnePage(),
            _TabTwoPage(),
          ],
        );
      },
    );
  }
}
