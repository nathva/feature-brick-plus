part of 'package:{{{fullPath}}}/base/{{feature_name.snakeCase()}}_page.dart';
// NOTE: Declare all the UI widgets here, including BlocBuilders.
/// {@template {{feature_name.snakeCase()}}_body}
/// Body of the {{feature_name.pascalCase()}}Page.
/// {@endtemplate}
{{#isConventional}}class _{{feature_name.pascalCase()}}Body extends StatelessWidget {
  /// {@macro {{feature_name.snakeCase()}}_body}
  const _{{feature_name.pascalCase()}}Body({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{feature_name.pascalCase()}}Bloc, {{feature_name.pascalCase()}}State>(
      builder: (context, state) {
        return Center(child: Text('{{feature_name.pascalCase()}}Page'));
      },
    );
  }
  
}{{/isConventional}}{{#isTabbed}}
class _{{feature_name.pascalCase()}}Body extends StatelessWidget {
  /// {@macro {{feature_name.pascalCase()}}_body}
  const _{{feature_name.pascalCase()}}Body({
    required TabController tabController,
    super.key,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{feature_name.pascalCase()}}Bloc, {{feature_name.pascalCase()}}State>(
      builder: (context, state) {
        return TabBarView(
          controller: _tabController,
          children: const [
            {{#childrenNames}}_{{..pascalCase()}}Page(),
            {{/childrenNames}}
          ],
        );
      },
    );
  }
}{{/isTabbed}}
