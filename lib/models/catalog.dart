class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      price: 999,
      desc: "Apple iPhone 12th Generation",
      image:
          "https://images.unsplash.com/photo-1591337676887-a217a6970a8a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGlwaG9uZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
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
