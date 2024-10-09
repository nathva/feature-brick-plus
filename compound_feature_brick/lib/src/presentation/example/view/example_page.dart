// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:compound_feature_brick/src/presentation/example/bloc/bloc.dart';
part 'package:compound_feature_brick/src/presentation/example/widgets/example_body.dart';
part 'package:compound_feature_brick/src/presentation/example/pages/tab_one/bloc/tab_one_bloc.dart';
part 'package:compound_feature_brick/src/presentation/example/pages/tab_one/bloc/tab_one_event.dart';
part 'package:compound_feature_brick/src/presentation/example/pages/tab_one/bloc/tab_one_state.dart';
part 'package:compound_feature_brick/src/presentation/example/pages/tab_one/view/tab_one_page.dart';
part 'package:compound_feature_brick/src/presentation/example/pages/tab_one/widgets/tab_one_body.dart';
part 'package:compound_feature_brick/src/presentation/example/pages/tab_two/bloc/tab_two_bloc.dart';
part 'package:compound_feature_brick/src/presentation/example/pages/tab_two/bloc/tab_two_event.dart';
part 'package:compound_feature_brick/src/presentation/example/pages/tab_two/bloc/tab_two_state.dart';
part 'package:compound_feature_brick/src/presentation/example/pages/tab_two/view/tab_two_page.dart';
part 'package:compound_feature_brick/src/presentation/example/pages/tab_two/widgets/tab_two_body.dart';

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
      //TODO: 
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
        body: _ExampleView(
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
class _ExampleView extends StatelessWidget {
  /// {@macro example_view}
  const _ExampleView({
    required TabController tabController,
    super.key,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return _ExampleBody(
      tabController: _tabController,
    );
  }
}
