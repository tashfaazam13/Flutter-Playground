import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories = [
    "Mobiles",
    "Laptops",
    "Desktops",
    "Vehicles",
    "Apparel",
  ];

  CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: EdgeInsets.only(right: 8),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                categories[i],
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
