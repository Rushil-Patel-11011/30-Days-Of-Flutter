class Item {
  final String? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [
  Item(
    id: "Rushil001",
    name: "iPhone 12 pro",
    desc: "Apple iPhone 12th generation",
    price: 999,
    color: "#33505a",
    image: "https://images.app.goo.gl/CpM1jwHknmDGKicAA",
  ),
];
