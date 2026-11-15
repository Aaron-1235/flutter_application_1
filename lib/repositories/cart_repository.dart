import 'package:flutter_application_1/models/cart_item.dart';

class CartRepository {
  CartRepository._intenal();

  static final CartRepository instance = CartRepository._intenal();

  final List<CartItem> _items = [];
  
  List <CartItem> getItems() {
    return List<CartItem>.unmodifiable(_items);
  }
  
  void addItem (CartItem item) {
    _items.add(item);
  }

  void removeItem(int index) {
    if (index >= 0 && index < _items.length) {
      _items.removeAt(index);
    }
  }
  int getTotalItems() {
    int total = 0;
    for (final CartItem item in _items) {
      total += item.quantity;
    }
    return total;
  }

  int get totalItemCount {
    return getTotalItems();
  }

  double getSubTotal() {
    double sum = 0.0;
    for (final CartItem item in _items) {
      sum += item. lineTotal;
    }
    return sum;
  }

  double getDeliveryFee() {
    if (_items.isEmpty) {
      return 0.0;
    }
    return 1.50;
  }

  double getTotalDue() {
    return getSubTotal() + getDeliveryFee();
  }

  void clear(){
    _items.clear();
  }
}