import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/model/foodModel.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile( {super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200]
      ),
      margin: EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //images
          Image.asset(food.imagePath,height: 100,),
          //text
          Text(food.name, style: GoogleFonts.dmSerifDisplay(
            fontSize: 20,
          ),),

          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$" + food.price),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow,),
                    Text(food.rating),
                  ],
                )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}