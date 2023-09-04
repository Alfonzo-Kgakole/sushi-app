import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/model/foodModel.dart';

class FoodDetail extends StatefulWidget {
  final Food food;
   FoodDetail({super.key, required this.food});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: ListView(
                children: [
                  //image
                  Image.asset(widget.food.imagePath, height: 200,),
                  
                  const SizedBox(height: 10),
                      
                  //food rating
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow,),
                      Text(widget.food.rating, style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]
                      ),),
                    ],
                  ),

                  const SizedBox(height: 10,),
                  //food name
                  Text(widget.food.name, style: GoogleFonts.dmSerifDisplay(fontSize: 28),)
                  //food description 
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}