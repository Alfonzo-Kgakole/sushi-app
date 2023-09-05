import 'package:flutter/material.dart';
import 'package:sushi_app/model/foodModel.dart';
import 'package:provider/provider.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "Uramak",
        imagePath: "assets/images/sushi1.png",
        price: "45",
        rating: "2.5"),
    Food(
        name: "Nigiri",
        imagePath: "assets/images/sushi2.png",
        price: "45",
        rating: "5"),
    Food(
        name: "Temaki",
        imagePath: "assets/images/sushi3.png",
        price: "14",
        rating: "4.5"),
  ];

  //customer cart
  List<Food> _cart = [];

  //getter method
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food food, int quatity) {
    for (int i = 0; i < quatity; i++) {
       _cart.add(food);
      notifyListeners();
    }
  }

  //remove food from Items
  void removeToCart() {
    // ignore: list_remove_unrelated_type
    _cart.remove(Food);
    notifyListeners();
  }
}
