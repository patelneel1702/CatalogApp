import 'package:demo4/widget/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Natural App",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Container(
        width: 1000.0,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: const Image(
          image: AssetImage("assets/images/img5.jpg"),
          height: 200.0,
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
