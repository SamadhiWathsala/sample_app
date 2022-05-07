import 'package:flutter/material.dart';

ThemeData myTheme() => ThemeData(
  primarySwatch: Colors.purple,
  textTheme:
  const TextTheme(headline3: TextStyle(fontSize: 24, color: Colors.purple)),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.purple[50],
    filled: true,
    hintStyle: const TextStyle(fontWeight: FontWeight.bold),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.horizontal(
          left: Radius.circular(50), right: Radius.circular(50)),
      borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.horizontal(
          left: Radius.circular(50), right: Radius.circular(50)),
      borderSide: BorderSide(color: Colors.purple),
    ),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.horizontal(
          left: Radius.circular(50), right: Radius.circular(50)),
      borderSide: BorderSide(color: Colors.white),
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50),right: Radius.circular(50)),
      borderSide: BorderSide(color: Colors.red),
    ),

  ),
);