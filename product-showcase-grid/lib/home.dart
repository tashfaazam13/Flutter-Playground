import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:product_showcase/widgets/bottom_navigation.dart';
import 'package:product_showcase/widgets/category.dart';
import 'package:product_showcase/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://media.craiyon.com/2023-10-08/90dc7628b820482ca26cd9f0915bbc90.webp",
            ),
          ),
        ),
        title: Text("Hi Tashfa", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Icon(Iconsax.pause),
           SizedBox(width: 6),
          Container(height: 23, width: 1, color: Colors.grey.shade700,),
          SizedBox(width: 8),
          Icon(Iconsax.arrow_down_1, size: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Iconsax.notification_bing),
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(height: 3),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search for products available....",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 17,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey.shade600,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                    
                SizedBox(width: 10),
                Container(
                  height: 55,
                  width: 57,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Iconsax.setting_4, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 12),
            CategoryList(),
            SizedBox(height: 12),
            Expanded(
             child: ProductCard(),
           ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 5, 34, 76),
        child: Icon(Iconsax.add_square, size: 28),
        onPressed: (){

        }
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }
}
