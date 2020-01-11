import 'package:flutter/material.dart';
import 'package:redux_shopping_list/shopping_list_item.dart';

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, position) => ShoppingListItem(),
    );
  }
}
