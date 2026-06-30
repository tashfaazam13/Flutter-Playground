import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CategoryList extends StatelessWidget {

    final List<Map <String, dynamic>> categories = [
    {
      "icon": Icons.important_devices,
      "text": "Electronics"
    },
    {
      "icon": Icons.diamond_outlined,
      "text": "Jewelry"
    },
    {
      "icon": Iconsax.lamp_charge,
      "text": "Appliances"
    },
  ];

  CategoryList({super.key});

 @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 10), 
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(categories[index]["icon"], size: 20),
                SizedBox(width: 10),
                Text(
                  categories[index]["text"],
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}