import 'package:flutter/material.dart';

class StorageButton extends StatefulWidget {
  final String text;
  final bool isSelected;

  const StorageButton({super.key, required this.text, this.isSelected = false});

  @override
  State<StorageButton> createState() => _StorageButtonState();
}

class _StorageButtonState extends State<StorageButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      decoration: BoxDecoration(
        color: widget.isSelected
            ? Color.fromARGB(255, 5, 34, 76)
            : Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          color: widget.isSelected ? Colors.white : Colors.grey.shade700,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
