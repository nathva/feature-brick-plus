import 'package:flutter/material.dart';
import 'package:{{{fullPath}}}/bloc/bloc.dart';
import 'package:{{{fullPath}}}/base/{{feature_name.snakeCase()}}_body.dart';

/// {@template {{feature_name.snakeCase()}}_page}
/// A description for {{feature_name.pascalCase()}}Page
/// {@endtemplate}
class {{feature_name.pascalCase()}}Page extends StatelessWidget {
  /// {@macro {{feature_name.snakeCase()}}_page}
  const {{feature_name.pascalCase()}}Page({super.key});

  /// The path name of {{feature_name.pascalCase()}}Page. Use for navigation.
  static const path = '/$routeName';
  
  /// The route name of {{feature_name.pascalCase()}}Page. Use to navigate
  /// with named routes.
  static const routeName = '{{feature_name.paramCase()}}';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{feature_name.pascalCase()}}Bloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('{{feature_name.pascalCase()}}'),
        ),
        body: const {{feature_name.pascalCase()}}View(),
      ),
    );
  }
}

// NOTE: Declare all BlocListeners of {{feature_name.pascalCase()}} here to handle navigation, showing dialogs, etc.
/// {@template {{feature_name.snakeCase()}}_view}
/// Displays the Body of {{feature_name.pascalCase()}}View
/// {@endtemplate}
/// 
class {{feature_name.pascalCase()}}View extends StatelessWidget {
  /// {@macro {{feature_name.snakeCase()}}_view}
  const {{feature_name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return const {{feature_name.pascalCase()}}Body();
  }
}
