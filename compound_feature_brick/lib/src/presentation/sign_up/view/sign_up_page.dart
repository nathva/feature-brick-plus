import 'package:flutter/material.dart';
import 'package:compound_feature_brick/src/presentation/sign_up/bloc/bloc.dart';
import 'package:compound_feature_brick/src/presentation/sign_up/widgets/sign_up_body.dart';

/// {@template sign_up_page}
/// A description for SignUpPage
/// {@endtemplate}
class SignUpPage extends StatelessWidget {
  /// {@macro sign_up_page}
  const SignUpPage({super.key});

  /// The path name of SignUpPage. Use for navigation.
  static const path = '/$routeName';

  /// The route name of SignUpPage. Use to navigate
  /// with named routes.
  static const routeName = 'sign-up';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SignUp'),
        ),
        body: const SignUpView(),
      ),
    );
  }
}

// NOTE: Declare all BlocListeners of SignUp here to handle navigation, showing dialogs, etc.
/// {@template sign_up_view}
/// Displays the Body of SignUpView
/// {@endtemplate}
///
class SignUpView extends StatelessWidget {
  /// {@macro sign_up_view}
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUpBody();
  }
}
