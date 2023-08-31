import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  //catalog field
  late CatalogModel _catalog;

  //store ids of each items in cart
  final List<int> _itemIds = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get items =>
      _itemIds.map((id) => _catalog.getItemByID(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add items
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
