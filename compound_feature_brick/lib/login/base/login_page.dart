import 'package:flutter/material.dart';
import 'package:compound_feature_brick/login/bloc/bloc.dart';
import 'package:compound_feature_brick/login/base/login_body.dart';

/// {@template login_page}
/// A description for LoginPage
/// {@endtemplate}
class LoginPage extends StatelessWidget {
  /// {@macro login_page}
  const LoginPage({super.key});

  /// The path name of LoginPage. Use for navigation.
  static const path = '/$routeName';
  
  /// The route name of LoginPage. Use to navigate
  /// with named routes.
  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: const LoginView(),
      ),
    );
  }
}

// NOTE: Declare all BlocListeners of Login here to handle navigation, showing dialogs, etc.
/// {@template login_view}
/// Displays the Body of LoginView
/// {@endtemplate}
/// 
class LoginView extends StatelessWidget {
  /// {@macro login_view}
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginBody();
  }
}
