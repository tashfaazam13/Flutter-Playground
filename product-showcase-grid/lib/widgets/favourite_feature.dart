import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {

   bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        isLiked = !isLiked;
        setState(() {
          
        });
      },
      icon: Icon(
        isLiked == true ? Icons.favorite : Icons.favorite_border_outlined, 
        size: 28
      ),
      color: isLiked == true ? Colors.amber.shade600 : Colors.grey,
    );
  }
}