import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.lightBlue,
      textTheme: Theme.of(context).textTheme,
      appBarTheme: const AppBarTheme(centerTitle: true));

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
