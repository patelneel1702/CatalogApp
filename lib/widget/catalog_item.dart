import 'package:demo4/models/catalog_model.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}"));
  }
}
