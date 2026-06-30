import 'package:assignment02_productpage/widgets/productdetail.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "imageUrl":
          "https://images.pexels.com/photos/18525573/pexels-photo-18525573.jpeg",
      "name": "Iphone 16",
      "icon": Icons.star,
      "reviews": "4.9 (43 Reviews)",
      "price": "60",
    },
    {
      "imageUrl":
          "https://static0.pocketlintimages.com/wordpress/wp-content/uploads/2023/04/samsungnote20ultra.jpg?w=1600&h=1200&fit=crop",
      "name": "Note 20 Ultra",
      "icon": Icons.star,
      "reviews": "5.0 (35 Reviews)",
      "price": "40",
    },
    {
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX-sExdYQB8xBIMyNoEhmhi2_pRfQtCIFexQ&s",
      "name": "Macbook Air",
      "icon": Icons.star,
      "reviews": "4.7 (30 Reviews)",
      "price": "70",
    },
    {
      "imageUrl":
          "https://photos5.appleinsider.com/gallery/45240-88149-The-new-MacBook-Pro-16-inch-xl.jpg",
      "name": "Macbook Pro",
      "icon": Icons.star,
      "reviews": "4.8 (48 Reviews)",
      "price": "80",
    },
    {
      "imageUrl":
          "https://compulsiontech.co.nz/cdn/shop/files/DSC00372.png?v=1727383844&width=3670",
      "name": "Gaming PC",
      "icon": Icons.star,
      "reviews": "5.0 (58 Reviews)",
      "price": "90",
    },
    {
      "imageUrl":
          "https://png.pngtree.com/png-vector/20250327/ourmid/pngtree-mechanical-gaming-keyboard-high-performance-rgb-backlit-for-gamers-png-image_15880541.png",
      "name": "Backlit Keyboard",
      "icon": Icons.star,
      "reviews": "4.8 (30 Reviews)",
      "price": "50",
    },
    {
      "imageUrl":
          "https://file.aiquickdraw.com/imgcompressed/img/compressed_6f422ef0fb7500f4c4fad93001ef40df.webp",
      "name": "Mercedes",
      "icon": Icons.star,
      "reviews": "4.5 (28 Reviews)",
      "price": "90",
    },
    {
      "imageUrl":
          "https://i.ytimg.com/vi/JHm_uJ5hcio/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLANt4VTBxCnIytJR9xRZQaC2loUjg",
      "name": "Mutton",
      "icon": Icons.star,
      "reviews": "4.6 (45 Reviews)",
      "price": "20",
    },
    {
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1vyNvyh-lW1RcsU1mVed8LwehB_DZToobNw&s",
      "name": "Roadster",
      "icon": Icons.star,
      "reviews": "4.5 (28 Reviews)",
      "price": "80",
    },
    {
      "imageUrl":
          "https://png.pngtree.com/png-vector/20240611/ourmid/pngtree-free-soccer-green-field-png-image_12692599.png",
      "name": "Royal Field",
      "icon": Icons.star,
      "reviews": "4.0 (23 Reviews)",
      "price": "60",
    },
  ];

  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, i) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>ProductDetail(details: products[i],))
            );
          },
          leading: CircleAvatar(
            radius: 26,
            backgroundImage: NetworkImage(products[i]["imageUrl"]),
          ),

          title: Text(
            products[i]["name"],
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Icon(products[i]["icon"], color: Colors.amber, size: 17),
              SizedBox(width: 5),
              Text(
                products[i]["reviews"],
                style: TextStyle(fontSize: 15, color: Colors.grey.shade500, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          trailing: Text(
            "\$${products[i]["price"]}",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}
