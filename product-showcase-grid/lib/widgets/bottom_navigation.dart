import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (value) {
        currentIndex = value;
        setState(
          () {

        }
        );
      },
      selectedIndex: currentIndex,
      destinations: [
        NavigationDestination(
          icon: Icon(
            Iconsax.stickynote,
            color: Color.fromARGB(255, 5, 34, 76),
            ), 
            label: "Task"
            ),
        NavigationDestination(
          icon: Icon(
          Iconsax.shop
          ), 
          label: "Marketplace"
          ),
        NavigationDestination(
          icon: Icon(
            Iconsax.messages
            ), 
            label: "Messages"
            ),
        NavigationDestination(
          icon: Icon(Iconsax.wallet_2),
          label: "Wallets",
        ),
      ],
    );
  }
}