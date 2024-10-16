import 'package:flutter/material.dart';
import 'package:compound_feature_brick/login/bloc/bloc.dart';

// NOTE: Declare all the UI widgets here, including BlocBuilders.
/// {@template login_body}
/// Body of the LoginPage.
/// {@endtemplate}
class LoginBody extends StatelessWidget {
  /// {@macro login_body}
  const LoginBody({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Center(child: Text('LoginPage'));
      },
    );
  }
  
}
