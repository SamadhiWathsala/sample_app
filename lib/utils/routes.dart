import 'package:flutter/material.dart';
import 'package:sample_app/screens/auth/sign_in.dart';
import 'package:sample_app/screens/auth/sign_up.dart';

final Map<String, WidgetBuilder> routes = {
  SignIn.routeName: (context) => const SignIn(),
  SignUp.routeName: (context) => const SignUp()
};