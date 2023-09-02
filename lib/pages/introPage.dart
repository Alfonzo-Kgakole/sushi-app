import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/utils/colors.dart';


class IntroPage extends StatelessWidget {
   const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SizedBox(height: 25,),

             //shop name
             Text("Sushi Shop",style: GoogleFonts.dmSerifDisplay(
              fontSize: 30,
              color: Colors.white
             )
             ),

             const SizedBox(height: 25),
             //icon
             Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset("assets/images/sushi3.png"),
             ),

             //title//
             Text("THE TASTE OF JAPANESE FOOD", style: GoogleFonts.dmSerifDisplay(
              fontSize: 44,
              color: Colors.white
             )
             ),

             //subtitle
             Text("Feel the taste of the most popular japanese food from anywhere, anytime", style: TextStyle(
              color: Colors.grey[200],
              height: 2
             )
             ),

             const SizedBox(height: 20,),

             //get started button
              MyButton(text: "Get Started",
              onTap: () { 
                //going to the menu page
                Navigator.pushNamed(context, "/menupage");
               },
             ),
          ],
        ),
      ),
    );
  }
}