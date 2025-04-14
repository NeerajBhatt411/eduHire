import 'package:eduhire/screens/university/auth/univeristy_forgot_password_otp.dart';
import 'package:eduhire/screens/utils/constants.dart';
import 'package:eduhire/screens/utils/responsive_util.dart';
import 'package:eduhire/widget/custom_text_form_field.dart';
import 'package:eduhire/widget/primary_button.dart';
import 'package:flutter/material.dart';
class UniversityForgotPassword extends StatefulWidget {
  const UniversityForgotPassword({super.key});

  @override
  State<UniversityForgotPassword> createState() => _UniversityForgotPasswordState();
}

class _UniversityForgotPasswordState extends State<UniversityForgotPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: ResponsiveUtil.screenHeight(context, 208),),
            Center(
                child: Text(
                  AppText.resetPassword,
                  style: TextStyle(
                      fontFamily: Fontfamily.fontFamily,
                      fontWeight: Fontfamily.bold,
                      fontSize: FontSizes.title),
                )),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 6),),

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
            SizedBox(height: ResponsiveUtil.screenHeight(context, 66),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CustomTextFormField(controller: emailController, text: "Email", prefixIcon: Icons.email_outlined),
            ),
            SizedBox(height: ResponsiveUtil.screenHeight(context,20),),
            PrimaryButton(text: "Continue", onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => UniveristyForgotPasswordOtp(),));

            },)

          ],
              ),
        ),
      ),);
  }
}
