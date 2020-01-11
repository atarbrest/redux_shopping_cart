import 'package:flutter/material.dart';

class AddItemDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Item'),
      content: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              autofocus: true,
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
          onPressed: () => Navigator.pop(context),
        ),
        FlatButton(
          child: Text('Cancel'),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
