import 'package:flutter/material.dart';
import 'package:sample_app/screens/wrapper.dart';
import 'package:sample_app/utils/routes.dart';
import 'package:sample_app/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample app',
      debugShowCheckedModeBanner: false,
      theme: myTheme(),
      routes: routes,
      home: const Wrapper(),
    );
  }
}

