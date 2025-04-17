import 'package:flutter/material.dart';

import '../screens/utils/constants.dart';

class DiscoverJobCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;

  DiscoverJobCard({
    required this.title,
    required this.imagePath,
    required this.onTap,
    this.backgroundColor = const Color(0xffD5F6ED),
    this.textColor = const Color(0xff1D7C4D),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 95,
        width: 156,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            Center(
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: Fontfamily.fontFamily,
                  fontWeight: Fontfamily.semiBold,
                  fontSize: 16,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
