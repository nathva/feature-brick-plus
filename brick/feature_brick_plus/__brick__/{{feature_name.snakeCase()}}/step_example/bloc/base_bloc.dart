 on<{{feature_name.pascalCase()}}NextStep>(_on{{feature_name.pascalCase()}}NextStep);
    on<{{feature_name.pascalCase()}}PreviousStep>(
      _on{{feature_name.pascalCase()}}PreviousStep,
    );






    class {{feature_name.pascalCase()}}NextStep extends {{feature_name.pascalCase()}}Event {
  const {{feature_name.pascalCase()}}NextStep({
    this.nextStep,
  });

  final {{feature_name.pascalCase()}}Step? nextStep;

  @override
  List<Object?> get props => [nextStep];
}

class {{feature_name.pascalCase()}}PreviousStep extends {{feature_name.pascalCase()}}Event {
  const {{feature_name.pascalCase()}}PreviousStep();
}




final {{feature_name.pascalCase()}}Step step;
  final int currentPageIndex;