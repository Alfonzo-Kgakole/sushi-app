import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/model/foodModel.dart';
import 'package:sushi_app/model/shop.dart';
import 'package:sushi_app/utils/colors.dart';

class FoodDetail extends StatefulWidget {
  final Food food;
  FoodDetail({super.key, required this.food});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  int quantityCount = 0;

  //method of decreamnet product
  void decreamentQuantity() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  //methods of increament of product
  void increamentQuantuty() {
    setState(() {
      quantityCount++;
    });
  }

  void AddToCart() {
    //only add to cart if there is something in the cart
    if (quantityCount > 0) {
      //get access to shop
      final shop = context.read<Shop>();

      //add to cart cart
      shop.addToCart(widget.food, quantityCount);

      //let the user know it was added successful
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: AppColors.primaryColor,
          content: const Text("Succssfully added to cart", style: TextStyle(
            color: Colors.white
          )),
          actions: [
            IconButton(
              onPressed: () {
                //pop once to remove dialog box
                Navigator.pop(context);

                //pop again to go revious screen
                Navigator.pop(context);
              },
              icon: const Icon(Icons.done, color: Colors.white,),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  //image
                  Image.asset(
                    widget.food.imagePath,
                    height: 200,
                  ),

                  const SizedBox(height: 10),

                  //food rating
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  //food name
                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),
                  const SizedBox(height: 10),

                  //food description
                  Text(
                    "Description",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 18),
                  ),

                  const SizedBox(height: 10),
                  Text(
                    "Nigiri is a type of traditional Japanese sushi that consists of a small, oblong-shaped mound of vinegared sushi rice, typically topped with a slice of raw or cooked seafood. The word nigiri itself means hand-pressed in Japanese, which reflects the way this type of sushi is made.",
                    style: TextStyle(height: 2, color: Colors.grey[600]),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: AppColors.primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$" + widget.food.price,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Row(
                      children: [
                        //minus button
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              shape: BoxShape.circle),
                          child: IconButton(
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              onPressed: decreamentQuantity),
                        ),

                        //quantity of products
                        const SizedBox(
                          width: 20,
                        ),
                        Text(quantityCount.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),

                        const SizedBox(
                          width: 20,
                        ),
                        //add button
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              shape: BoxShape.circle),
                          child: IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: increamentQuantuty),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(text: "Add To Cart", onTap: AddToCart)
              ],
            ),
          )
        ],
      ),
    );
  }
}
