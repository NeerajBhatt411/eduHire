import 'package:flutter/material.dart';

class DualTabSelector extends StatelessWidget {
  final String leftLabel;
  final String rightLabel;
  final int selectedIndex;
  final VoidCallback onLeftTap;
  final VoidCallback onRightTap;

  const DualTabSelector({
    super.key,
    required this.leftLabel,
    required this.rightLabel,
    required this.selectedIndex,
    required this.onLeftTap,
    required this.onRightTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Left Tab
        GestureDetector(
          onTap: onLeftTap,
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: selectedIndex == 0 ? Colors.black : Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.blue, width: 2),
            ),
            child: Center(
              child: Text(
                leftLabel,
                style: TextStyle(
                  color: selectedIndex == 0 ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        // Right Tab
        GestureDetector(
          onTap: onRightTap,
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: selectedIndex == 1 ? Colors.black : Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.blue, width: 2),
            ),
            child: Center(
              child: Text(
                rightLabel,
                style: TextStyle(
                  color: selectedIndex == 1 ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
