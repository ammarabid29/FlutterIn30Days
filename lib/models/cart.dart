import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  //catalog field
  late CatalogModel catalog;

  //store ids of each items in cart
  final List<int> _itemIds = [];

  //get items in the cart
  List<Item> get items =>
      _itemIds.map((id) => catalog.getItemByID(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //remove items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutataion extends VxMutation<MyStore> {
  final Item item;

  AddMutataion(this.item);

  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}
