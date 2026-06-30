import 'package:flutter/material.dart';
import 'package:product_showcase/widgets/product_detail.dart';
import 'package:product_showcase/widgets/favourite_feature.dart';

class ProductCard extends StatelessWidget {
  final List<Map<String, dynamic>> productList = [
     {
    "name": "IPhone 17 Pro Max",
    "subHeading": "Premium Titanium 256GB Model",
    "description":
        "Experience next-level performance with the latest A-series chip.Advanced triple camera system for pro-level photography.",
    "price": 1199.00,
    "oldPrice": 1299.00,
    "rating": "4.8(59)",
    "imageUrl":
        "https://images.pexels.com/photos/20291795/pexels-photo-20291795.jpeg",
  },
  {
    "name": "MacBook Pro 14",
    "subHeading": "Powerful M3 Chip Computing",
    "description":
        "Supercharged performance with Apple M3 chip.Liquid Retina XDR display with extreme brightness. All-day battery life for professional workflows.",
    "price": 1599.00,
    "oldPrice": 1799.00,
    "rating": "4.9(59)",
    "imageUrl":
        "https://images.pexels.com/photos/13791395/pexels-photo-13791395.jpeg",
  },
  {
    "name": "Sony WH-1000XM5",
    "subHeading": "Premium Noise Cancelling Audio",
    "description":
        "Industry-leading active noise cancellation. Crystal clear call quality with AI beamforming.\n"
        "Up to 30 hours of battery life.",
    "price": 349.00,
    "oldPrice": 399.00,
    "rating": "4.7(59)",
    "imageUrl":
        "https://images.pexels.com/photos/14735674/pexels-photo-14735674.jpeg",
  },
  {
    "name": "Apple Watch Ultra 2",
    "subHeading": "Rugged Outdoor Sports Edition",
    "description":
        "Built for extreme durability and outdoor adventures. Advanced health and fitness tracking sensors. Brightest display for clear visibility in sunlight.",
    "price": 799.00,
    "oldPrice": 849.00,
    "rating": "4.8(59)",
    "imageUrl":
        "https://images.pexels.com/photos/24182750/pexels-photo-24182750.jpeg",
  },
  {
    "name": "Wireless Keyboard",
    "subHeading": "Mechanical Gaming Switch Feel",
    "description":
        "Tactile mechanical switches for smooth typing. RGB backlit keys with customizable effects. Ergonomic design for long gaming sessions.",
    "price": 129.00,
    "oldPrice": 159.00,
    "rating": "4.5(59)",
    "imageUrl":
        "https://images.pexels.com/photos/13328204/pexels-photo-13328204.jpeg",
  },
  {
    "name": "Apple iPad Pro",
    "subHeading": "Liquid Retina Display Tablet",
    "description":
        "Ultra-thin design with powerful M-series chip. Liquid Retina display with ProMotion technology. Perfect for creativity and productivity.",
    "price": 1099.00,
    "oldPrice": 1199.00,
    "rating": "4.9(59)",
    "imageUrl":
        "https://images.pexels.com/photos/33632618/pexels-photo-33632618.jpeg",
  },
  {
    "name": "Sony Alpha Camera 7",
    "subHeading": "Professional 4K Mirrorless Gear",
    "description":
        "Full-frame sensor with exceptional clarity. 4K video recording with cinematic quality. Fast autofocus system for sharp captures.",
    "price": 2499.00,
    "oldPrice": 2699.00,
    "rating": "4.6(59)",
    "imageUrl":
        "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?q=80&w=800&auto=format&fit=crop",
  },
  {
    "name": "Samsung Galaxy S23 Ultra",
    "subHeading": "Premium Black Edition",
    "description":
        "Powerful Snapdragon processor for smooth performance. 200MP pro-grade camera system.Massive battery with super-fast charging.",
    "price": 159.00,
    "oldPrice": 79.00,
    "rating": "4.2(59)",
    "imageUrl":
        "https://images.pexels.com/photos/30466740/pexels-photo-30466740.jpeg",
  },
];

  ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 200 / 300,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ProductDetail(productList: productList[index]),
              ),
            );
          },
          child: SizedBox(
            height: 270,
            width: 200,
            child: Card.outlined(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Image.network(
                          productList[index]["imageUrl"],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        Positioned(top: 8, right: 8, child: Favourite()),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productList[index]["name"],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            productList[index]["subHeading"],
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          SizedBox(height: 3),
                          Row(
                            children: [
                              Text(
                                productList[index]["rating"],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.amber.shade500),
                            ],
                          ),
                          Row(
                            spacing: 4,
                            children: [
                              Text(
                                "\$${productList[index]["price"]}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                "\$${productList[index]["oldPrice"]}",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey.shade500,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
