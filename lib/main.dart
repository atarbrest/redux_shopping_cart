import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';

import 'package:redux_shopping_list/models/cart_item.dart';
import 'package:redux_shopping_list/reducers/reducers.dart';
import 'package:redux_shopping_list/shopping_cart_app.dart';

void main() {
  final store = DevToolsStore<List<CartItem>>(
    appReducers,
    initialState: List(),
  );

//  return runApp(ShoppingCartApp(store));
  return runApp(FlutterReduxApp(store));
}

class FlutterReduxApp extends StatelessWidget {
  final DevToolsStore<List<CartItem>> store;

  FlutterReduxApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: ShoppingCartApp(store),
    );
  }
}

