import 'package:assignment02_productpage/widgets/categorylist.dart';
import 'package:assignment02_productpage/widgets/productlist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // App bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 4,
        shadowColor: Colors.black,
        title: Text(
          "Ecom App UI",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications, size: 30, color: Colors.black),
          ),
        ],
      ),

      // Search Box
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
          SizedBox(height: 5), 
            
            TextField(
              decoration: InputDecoration(
                hintText: "Search Product",
                hintStyle: TextStyle(
                  fontSize: 17,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                  size: 30,
                ),
                fillColor: Colors.grey.shade100,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1.5,
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1.5,
                  ),
                ),
              ),
            ),
            
           SizedBox(height: 10), 
             
            CategoryList(),
        
            SizedBox(height: 10), 
                          
            Expanded(
              child: ProductList(),
           ),
          ],
        ),
      ),
    );
  }
}
