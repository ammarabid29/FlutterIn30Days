// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModel {
  static List<Item> items = [];

  // Get Item by ID
  static Item getItemByID(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  // Get Item by position
  static Item getItemByPosition(int position) => items[position];
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

  Item copyWith({
    int? id,
    String? name,
    num? price,
    String? desc,
    String? image,
    String? color,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      desc: desc ?? this.desc,
      image: image ?? this.image,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'price': price,
      'desc': desc,
      'image': image,
      'color': color,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      price: map['price'] as num,
      desc: map['desc'] as String,
      image: map['image'] as String,
      color: map['color'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, price: $price, desc: $desc, image: $image, color: $color)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.price == price &&
        other.desc == desc &&
        other.image == image &&
        other.color == color;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        price.hashCode ^
        desc.hashCode ^
        image.hashCode ^
        color.hashCode;
  }
}
