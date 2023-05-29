import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/widgets/explore_list.dart';
import 'package:pregnancy_helper/widgets/explore_view.dart';

class ExplorePageCard extends StatelessWidget {
  const ExplorePageCard(
      {super.key,
      required this.img,
      required this.title,
      required this.width,
      required this.height,
      required this.item});
  final String img, title;
  final double width, height;
  final Map item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ExploreView(item: item));
      },
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(right: 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              img,
              width: 130,
              height: 70,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
