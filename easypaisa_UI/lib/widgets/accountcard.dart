import 'package:flutter/material.dart';

class GreenBox extends StatelessWidget {
  final String number;
  final String name;
  const GreenBox({required this.name, required this.number, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 192,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 183,
            padding: EdgeInsets.only(top: 5, left: 8, bottom: 5),
            decoration: BoxDecoration(
              color: Color.fromARGB(122, 224, 224, 224),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Icon(Icons.wallet, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  "easypaisa Account",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),

          SizedBox(height: 32),

          Text(name, style: TextStyle(color: Colors.white, fontSize: 17)),

          SizedBox(height: 8),

          Text(number, style: TextStyle(color: Colors.white)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sign in to your easypaisa account",
                style: TextStyle(color: Colors.white),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text("Sign In"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
