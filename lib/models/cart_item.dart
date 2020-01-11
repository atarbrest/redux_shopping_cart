class CartItem{
  final bool checked;
  final String name;

  CartItem(this.checked, this.name);

  @override
  String toString() {
    return 'CartItem{completed: $checked, ItemName: $name}';
  }
}