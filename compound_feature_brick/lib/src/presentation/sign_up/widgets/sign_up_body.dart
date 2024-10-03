import 'package:flutter/material.dart';
import 'package:compound_feature_brick/src/presentation/sign_up/bloc/bloc.dart';

// NOTE: Declare all the UI widgets here, including BlocBuilders.
/// {@template sign_up_body}
/// Body of the SignUpPage.
/// {@endtemplate}
class SignUpBody extends StatelessWidget {
  /// {@macro sign_up_body}
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return Center(child: Text('SignUpPage'));
      },
    );
  }
}
