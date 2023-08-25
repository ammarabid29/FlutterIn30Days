class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      price: 999,
      desc: "Apple iPhone 12th Generation",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
      color: "#33505a",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final num price;
  final String desc;
  final String image;
  final String color;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.desc,
    required this.image,
    required this.color,
  });
}
