import 'package:flutter/material.dart';
class UniversityForgotPassword extends StatefulWidget {
  const UniversityForgotPassword({super.key});

  @override
  State<UniversityForgotPassword> createState() => _UniversityForgotPasswordState();
}

class _UniversityForgotPasswordState extends State<UniversityForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        Center(child: Text("foget password"))
      ],
    ),);
  }
}
