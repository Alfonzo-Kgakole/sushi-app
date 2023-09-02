import 'package:flutter/material.dart';
import 'package:sushi_app/utils/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.secondaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(width: 10),

            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
            //icon
          ],
        ),
      ),
    );
  }
}
