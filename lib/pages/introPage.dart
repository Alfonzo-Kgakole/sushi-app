import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class IntroPage extends StatelessWidget {
   const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(22, 237, 63, 37),
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
              child: Image.asset("assets/images/suhsi3.png"),
             )

             //title//

             //subtitle

             //get started button
          ],
        ),
      ),
    );
  }
}