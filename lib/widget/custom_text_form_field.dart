import 'package:flutter/material.dart';
import '../screens/utils/constants.dart'; // AppColors.lightGrey assumed

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String text;
  final IconData prefixIcon;
  final bool isPassword; //  new flag to control eye icon

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.text,
    required this.prefixIcon,
    this.isPassword = false, // default is false
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isPassVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword ? isPassVisible : false,
      decoration: InputDecoration(
        hintText: widget.text,
        prefixIcon: Icon(widget.prefixIcon),
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            isPassVisible ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
          onPressed: () {
            setState(() {
              isPassVisible = !isPassVisible;
            });
          },
        )
            : null, // 👈 suffixIcon sirf password ke liye
        filled: true,
        fillColor: AppColors.lightGrey,
        contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
