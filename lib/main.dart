import 'package:flutter/material.dart';
import 'package:redux_shopping_list/add_item_dialog.dart';
import 'package:redux_shopping_list/shopping_list.dart';

void main() => runApp(ShoppingCartApp());

class ShoppingCartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(),
      home: ShoppingCart(),
    );
  }
}

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ShoppingList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _openAddItemDialog(context),
      ),
    );
  }
}

_openAddItemDialog(BuildContext context) {
  showDialog(context: context, builder: (_){
    return AddItemDialog();
  });
}

