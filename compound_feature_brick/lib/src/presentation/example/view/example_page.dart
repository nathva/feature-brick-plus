// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:compound_feature_brick/src/presentation/example/bloc/bloc.dart';
import 'package:compound_feature_brick/src/presentation/example/widgets/parts.dart';

/// {@template example_page}
/// A description for ExamplePage
/// {@endtemplate}
class ExamplePage extends StatefulWidget {
  /// {@macro example_page}
  const ExamplePage({super.key});

  /// The path name of ExamplePage. Use for navigation.
  static const path = '/$routeName';

  /// The route name of ExamplePage. Use to navigate
  /// with named routes.
  static const routeName = 'example';

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Tab 1'),
    Tab(text: 'Tab 2'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExampleBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Example'),
          bottom: TabBar(
            tabs: myTabs,
            controller: _tabController,
          ),
        ),
        body: ExampleView(
          tabController: _tabController,
        ),
      ),
    );
  }
}

// NOTE: Declare all BlocListeners of Example here to handle navigation,
// showing dialogs, etc.
/// {@template example_view}
/// Displays the Body of ExampleView
/// {@endtemplate}
///
class ExampleView extends StatelessWidget {
  /// {@macro example_view}
  const ExampleView({
    required TabController tabController,
    super.key,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return ExampleBody(
      tabController: _tabController,
    );
  }
}
