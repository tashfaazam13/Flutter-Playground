import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  // Properties
  final IconData icon;
  final String title;
  final String? subtitle;

  const IconText({required this.icon, required this.title, this.subtitle, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 20),
        Text(
          title,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
        if (subtitle != null)
          Text(
            subtitle!,
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}
