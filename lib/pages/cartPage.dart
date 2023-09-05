import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/model/foodModel.dart';
import 'package:sushi_app/model/shop.dart';
import 'package:sushi_app/utils/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(Food food, BuildContext context) {
    //getting access to the shop
    final shop = context.read<Shop>();

    //removing items from the cart
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: ((context, value, child) => Scaffold(
            backgroundColor: AppColors.primaryColor,
            appBar: AppBar(
              foregroundColor: Colors.white,
              title: Text("My Cart"),
              backgroundColor: AppColors.primaryColor,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: value.cart.length,
                    itemBuilder: (context, index) {
                      //get the food from cart
                      final Food food = value.cart[index];

                      //get the food name
                      final String foodName = food.name;

                      //get the food price
                      final String foodPrice = food.price;

                      //return the list tile
                      return Container(
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: ListTile(
                            title: Text(
                              foodName,
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              foodPrice,
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                              onPressed: () => removeFromCart(food, context),
                            )),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MyButton(text: "Pay Now", onTap: () {}),
                )
              ],
            ),
          )),
    );
  }
}
