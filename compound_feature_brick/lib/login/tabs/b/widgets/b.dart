// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:compound_feature_brick/login/login.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoginBody', () {
    testWidgets('renders Text', (tester) async { 

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
