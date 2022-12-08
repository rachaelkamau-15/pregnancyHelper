
import 'package:flutter/material.dart';

class NutritionCard extends StatelessWidget {
  const NutritionCard({super.key, required this.img, required this.title});
  final String img,title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      margin: EdgeInsets.only(right: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            img,
            width: 70,
            height: 70,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}