import 'package:demo4/pages/home_page.dart';
import 'package:demo4/pages/login_page.dart';
import 'package:demo4/utils/routes.dart';
import 'package:demo4/widget/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.loginRoutes,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.loginRoutes: (context) => const LoginPage(),
        MyRoutes.homeRoutes: (context) => const HomePage(),
      },
    );
  }
}
