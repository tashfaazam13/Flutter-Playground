import 'package:flutter/material.dart';
import 'package:product_showcase/widgets/storage_button.dart';

class ProductDetail extends StatelessWidget {
  
  final Map<String, dynamic> productList;

  const ProductDetail({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.favorite_border, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                productList["imageUrl"],
                height: 200,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),

            SizedBox(height: 23),

            Text(
              productList["name"],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),

            SizedBox(height: 10),

            Row(
              children: [
                Text(
                  "\$${productList['price']}",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 12),
                Text(
                  productList["rating"],
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                ),
              ],
            ),

            SizedBox(height: 25),

            Text(
              "Description",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),

            SizedBox(height: 10),

            Text(
              productList["description"],
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade700,
                height: 1.5,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Storage Options",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),

            SizedBox(height: 15),

            Row(
              children: [
                StorageButton(text: "128GB", isSelected: true),
                SizedBox(width: 10),
                StorageButton(text: "256GB"),
                SizedBox(width: 10),
                StorageButton(text: "512GB"),
              ],
            ),

            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 5, 34, 76),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Add to Cart",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
