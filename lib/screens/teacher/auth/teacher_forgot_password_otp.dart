import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../widget/custom_text_form_field.dart';
import '../../../widget/primary_button.dart';
import '../../utils/constants.dart';
import '../../utils/responsive_util.dart';
class TeacherForgotPasswordOtp extends StatefulWidget {
  const TeacherForgotPasswordOtp({super.key});

  @override
  State<TeacherForgotPasswordOtp> createState() => _TeacherForgotPasswordOtpState();
}

class _TeacherForgotPasswordOtpState extends State<TeacherForgotPasswordOtp> {
  String enteredOtp = '';

  List<TextStyle?> createOtpTextStyles(BuildContext context) {
    Color accentPurpleColor = Color(0xFF6A53A1);
    Color accentPinkColor = Color(0xFFF99BBD);
    Color accentDarkGreenColor = Color(0xFF115C49);
    Color accentYellowColor = Color(0xFFFFB612);
    Color accentOrangeColor = Color(0xFFEA7A3B);

    List<Color> colors = [
      // accentPurpleColor,
      accentYellowColor,
      accentDarkGreenColor,
      accentOrangeColor,
      accentPinkColor,
      // accentPurpleColor,
    ];

    return colors.map((color) {
      return TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: 24, // ✅ Adjust font size
        height: 1.2, // ✅ This helps with vertical centering
        fontFamily: "Montserrat", // Optional: apna font
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<TextStyle?> otpTextStyles = createOtpTextStyles(context);

    TextEditingController newPasswordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: ResponsiveUtil.screenHeight(context, 100),
              ),
              Center(
                  child: Text(
                    AppText.resetPassword,
                    style: TextStyle(
                        fontFamily: Fontfamily.fontFamily,
                        fontWeight: Fontfamily.bold,
                        fontSize: FontSizes.title),
                  )),
              SizedBox(
                height: ResponsiveUtil.screenHeight(context, 6),
              ),
              Center(
                child: Text(
                  AppText.resetPasswordSubtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: FontSizes.subtitle,
                      fontFamily: Fontfamily.fontFamily,
                      fontWeight: Fontfamily.regular,
                      color: AppColors.textGrey),
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.screenHeight(context, 50),
              ),
              Row(children: [
                SizedBox(
                  width: ResponsiveUtil.screenWidth(context, 10),
                ),
                Text(
                  "Enter OTP",
                  style: TextStyle(
                      color: AppColors.black, fontWeight: Fontfamily.medium),
                ),
              ],),
              SizedBox(
                height: ResponsiveUtil.screenHeight(context, 16),
              ),

              OtpTextField(
                numberOfFields: 4,
                borderColor: AppColors.softGrey,
                focusedBorderColor: AppColors.primary,
                styles: otpTextStyles,
                showFieldAsBox: true,
                borderWidth: 3.0,
                borderRadius: BorderRadius.circular(12),
                fieldWidth: 56,
                fieldHeight: 56,
                onCodeChanged: (String code) {
                  // Can use this for live validation
                },
                onSubmit: (String code) {
                  setState(() {
                    enteredOtp = code;
                  });
                },
              ),
              SizedBox(
                height: ResponsiveUtil.screenHeight(context, 50),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CustomTextFormField(
                  controller: newPasswordController,
                  text: "New Password",
                  prefixIcon: Icons.lock_outline,
                  isPassword: true,
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.screenHeight(context, 20),
              ),
               PrimaryButton(
                text: "Continue",
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
