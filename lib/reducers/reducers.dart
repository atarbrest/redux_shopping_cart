import 'package:redux_shopping_list/actions/actions.dart';
import 'package:redux_shopping_list/models/cart_item.dart';

List<CartItem> appReducers(List<CartItem> items, dynamic action) {
  if (action is AddItemAction) {
    return addItem(items, action);
  } else if (action is ToggleItemStateAction) {
    return toggleItem(items, action);
  }
  return items;
}

List<CartItem> addItem(List<CartItem> items, AddItemAction action) {
  return List.from(items)..add(action.item);
}

List<CartItem> toggleItem(List<CartItem> items, dynamic action) {
  return items
      .map((item) => item.name == action.item.name ? action.item : item)
      .toList(/*true*/);
}
