import 'package:redux_shopping_list/models/cart_item.dart';

class AddItemAction {
  final CartItem item;

  AddItemAction(this.item);

  @override
  String toString() => 'AddItemAction{item: $item }';
}

class ToggleItemStateAction {
  final CartItem item;

  ToggleItemStateAction(this.item);

  @override
  String toString() {
    return 'ToggleItemStateAction{item: $item}';
  }
}