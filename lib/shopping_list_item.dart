import 'package:flutter/material.dart';
import 'package:redux_shopping_list/models/cart_item.dart';

class ShoppingListItem extends StatelessWidget {
  final CartItem item;

  ShoppingListItem(this.item);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.name),
      leading: Checkbox(
        onChanged: (isChecked){},
        value: false,
      ),
    );
  }
}
