import 'package:flutter/material.dart';

class ShoppingListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('ToDo: shopping item name'),
      leading: Checkbox(
        onChanged: (isChecked){},
        value: false,
      ),
    );
  }
}
