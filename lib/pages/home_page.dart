import 'package:demo4/models/catalog_model.dart';
import 'package:demo4/widget/catalog_item.dart';
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
      body: ListView.builder(
          itemCount: Catalogmodel.Items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: Catalogmodel.Items[0],
            );
          }),
      drawer: const MyDrawer(),
    );
  }
}
