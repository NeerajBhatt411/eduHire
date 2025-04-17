import 'package:eduhire/screens/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final Function(String) onChanged;

  const CustomSearchBar({
    super.key,
    required this.title,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 52,
        width: 311,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: TextFormField(
            controller: controller,
            onChanged: onChanged,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: title,
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(vertical: 16),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.blue, width: 2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
