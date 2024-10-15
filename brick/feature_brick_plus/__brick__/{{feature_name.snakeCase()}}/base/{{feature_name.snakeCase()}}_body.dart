import 'package:flutter/material.dart';
import 'package:{{{fullPath}}}/bloc/bloc.dart';

// NOTE: Declare all the UI widgets here, including BlocBuilders.
/// {@template {{feature_name.snakeCase()}}_body}
/// Body of the {{feature_name.pascalCase()}}Page.
/// {@endtemplate}
class {{feature_name.pascalCase()}}Body extends StatelessWidget {
  /// {@macro {{feature_name.snakeCase()}}_body}
  const {{feature_name.pascalCase()}}Body({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{feature_name.pascalCase()}}Bloc, {{feature_name.pascalCase()}}State>(
      builder: (context, state) {
        return Center(child: Text('{{feature_name.pascalCase()}}Page'));
      },
    );
  }
  
}
