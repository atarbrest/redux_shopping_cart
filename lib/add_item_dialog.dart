import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_shopping_list/actions/actions.dart';

import 'package:redux_shopping_list/models/cart_item.dart';

class AddItemDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<List<CartItem>, OnItemAddedCallback>(
      converter: (store) {
        return (itemName) =>
            store.dispatch(AddItemAction(CartItem(false, itemName)));
      },
      builder: (context, callback) {
        return AddItemDialogWidget(callback);
      },
    );
  }
}

typedef OnItemAddedCallback = Function(String itemName);

//=========================================================

class AddItemDialogWidget extends StatefulWidget {
  final OnItemAddedCallback callback;

  AddItemDialogWidget(this.callback);

  @override
  _AddItemDialogWidgetState createState() =>
      _AddItemDialogWidgetState(this.callback);
}

class _AddItemDialogWidgetState extends State<AddItemDialogWidget> {
  String itemName;
  final OnItemAddedCallback callback;

  _AddItemDialogWidgetState(this.callback);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Item'),
      content: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              autofocus: true,
              onChanged: (newName) => _onTextChanged(newName),
              decoration: const InputDecoration(
                labelText: 'Item Name',
                helperText: 'e.g. Red Apples',
              ),
            ),
          ),
        ],
      ), //Text('Item name'),
      actions: <Widget>[
        FlatButton(
          child: Text('Add'),
          onPressed: () {
            callback(itemName);
            return Navigator.pop(context);
          },
        ),
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            return Navigator.pop(context);
          },
        ),
      ],
    );
  }

  _onTextChanged(newName) {
    itemName = newName;
  }
}
