

/// {@template travel_subscription_page}
/// A description for {{feature_name.pascalCase()}}Page
/// {@endtemplate}
class {{feature_name.pascalCase()}}Page extends StatelessWidget {
  /// {@macro travel_subscription_page}
  const {{feature_name.pascalCase()}}Page({
    required this.params,
    super.key,
  });

  static const path = '/$routeName';

  static const routeName = '{{feature_name.paramCase()}}';

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
          create: (context) => {{feature_name.pascalCase()}}Bloc(),
      child: const Scaffold(
        appBar: AppBar(
          title: const Text('{{feature_name.pascalCase()}}'),
        ),
        body: {{feature_name.pascalCase()}}View(),
      ),
    );
  }
}

/// {@template travel_subscription_view}
/// Displays the Body of {{feature_name.pascalCase()}}View
/// {@endtemplate}
class {{feature_name.pascalCase()}}View extends StatelessWidget {
  /// {@macro travel_subscription_view}
  const {{feature_name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return {{feature_name.pascalCase()}}Body();
  }
}
