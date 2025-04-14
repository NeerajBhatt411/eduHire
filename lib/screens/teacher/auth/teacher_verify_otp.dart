import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../widget/primary_button.dart';
import '../../utils/constants.dart';
import '../../utils/responsive_util.dart';
class TeacherVerifyOtp extends StatefulWidget {
  const TeacherVerifyOtp({super.key});

  @override
  State<TeacherVerifyOtp> createState() => _TeacherVerifyOtpState();
}

class _TeacherVerifyOtpState extends State<TeacherVerifyOtp> {
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
        fontSize: 24,        // ✅ Adjust font size
        height: 1.2,          // ✅ This helps with vertical centering
        fontFamily: "Montserrat", // Optional: apna font
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<TextStyle?> otpTextStyles = createOtpTextStyles(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: ResponsiveUtil.screenHeight(context, 60),),
              Center(child: Text(AppText.verification,style: TextStyle(fontWeight: Fontfamily.bold,fontFamily: Fontfamily.fontFamily,fontSize: FontSizes.title),)),
              Center(child: Text(AppText.verificationDesc, textAlign:TextAlign.center, style: TextStyle(fontSize: FontSizes.subtitle, fontFamily: Fontfamily.fontFamily,fontWeight: Fontfamily.regular,color: AppColors.softGrey),),),
              SizedBox(height: ResponsiveUtil.screenHeight(context, 50),),
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
              SizedBox(height: ResponsiveUtil.screenHeight(context, 20),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Text(AppText.didNotReceive,style: TextStyle(fontWeight: Fontfamily.regular,fontFamily: Fontfamily.fontFamily,fontSize: 14,color: AppColors.darkGrey ),)),
                      SizedBox(width: ResponsiveUtil.screenWidth(context, 4),),
                      Center(child: Text(AppText.resendCode,style: TextStyle(fontWeight: Fontfamily.semiBold,fontFamily: Fontfamily.fontFamily, fontSize: 14, color: AppColors.primary),))
                    ],),
                ),
              ),
              SizedBox(height: ResponsiveUtil.screenHeight(context, 260),),
              PrimaryButton(text: "Continue", onTap:() {

              },)







            ],
          ),
        ),
      ),

    );
  }
}
