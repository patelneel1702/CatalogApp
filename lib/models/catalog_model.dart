class Item {
  final int id;
  final String name;
  final String image;
  final num price;
  final String desc;
  final String color;

  Item(
      {required this.id,
      required this.name,
      required this.image,
      required this.price,
      required this.desc,
      required this.color});
}

class Catalogmodel {
  // ignore: non_constant_identifier_names
  static final Items = [
    Item(
        id: 1,
        name: "neel",
        image: "image",
        price: 999,
        desc: "nbnabsnc",
        color: "color")
  ];
}
