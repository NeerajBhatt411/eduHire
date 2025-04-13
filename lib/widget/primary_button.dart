import 'package:flutter/material.dart';

import '../screens/utils/constants.dart';
import '../screens/utils/responsive_util.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor = AppColors.primary, // Default to primary color
    this.textColor = AppColors.white, // Default to white color
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: ResponsiveUtil.screenHeight(context, 56),
          width: ResponsiveUtil.screenWidth(context, 326),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontFamily: Fontfamily.fontFamily,
                fontWeight: Fontfamily.semiBold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
