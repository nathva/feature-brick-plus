
/// {@template {{feature_name.snakeCase()}}_body}
/// Body of the {{feature_name.pascalCase()}}Page.
///
/// Add what it does
/// {@endtemplate}
class {{feature_name.pascalCase()}}Body extends StatelessWidget {
  /// {@macro {{feature_name.snakeCase()}}_body}
  {{feature_name.pascalCase()}}Body({super.key});

  final controller = PageController();

  final scrollController = ScrollController(keepScrollOffset: false);

  int get totalSteps => {{feature_name.pascalCase()}}Step.values.length - 1;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{feature_name.pascalCase()}}Bloc, {{feature_name.pascalCase()}}State>(
        builder: (context, state) {
          return PageView(
              controller: controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                {{#childrenNames}}_{{#pascalCase}}{{.}}{{/pascalCase}}Page(),
                {{/childrenNames}}
              ],
            ),
          
        },
  }
}
