import 'package:flutter/material.dart';

class AppColors {


  //colors
  static const Color white = Colors.white;
  static const Color black = Color(0xff212529);
  static const Color grey = Colors.grey;
  static const Color softGrey = Color(0xff6C757D);
  static const Color lightGrey = Color(0xffF8F9FA);
  static const Color subtitleColor = Color(0xff6C757D);
  static const Color textGrey = Color(0xFF8B8B8B);
  static const Color primary = Color(0xFF007BFF); // Blue login button
  static const Color borderColor = Color(0xFFE0E0E0);
}

class AppText {
  static const String appName = "EduHire.";
  static const String loginTitle = "Log in to Eduhire!";
  static const String loginSubtitle = "Please enter your data to continue";
  static const String createAccountTitle = "Let’s get started";
  static const String createAccountSubtitle = "Create a new account";
  static const String username = "Username";
  static const String password = "Password";
  static const String email = "Email";
  static const String yourName = "Your name";
  static const String forgotPassword = "Forgot your password?";
  static const String login = "Login";
  static const String createAccount = "Create a new account";
  static const String verification = "Verification Code";
  static const String verificationDesc = "We have sent the verification code to your email";
  static const String didNotReceive = "Didn't receive code?";
  static const String continueBtn = "Continue";

}

class FontSizes {
  static const double title = 24; // Title font size 32px
  static const double subtitle = 16; // Subtitle font size 16px
  static const double label = 14; // Label text size 14px
  static const double textFieldHint = 16; // Textfield hint size 16px
  static const double loginButtonText = 16; // Login button text size 16px
  static const double createAccountText = 14; // Create new account text size 14px
}

class Fontfamily{
  //font family
  static const String fontFamily = 'Montserrat';

  // Font Weights
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}
class AppPadding {
  static const EdgeInsets screen = EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  static const EdgeInsets field = EdgeInsets.symmetric(vertical: 8);
}
