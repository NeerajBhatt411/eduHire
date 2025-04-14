import 'package:eduhire/screens/teacher/auth/teacher_forgot_password_otp.dart';
import 'package:flutter/material.dart';

import '../../../widget/custom_text_form_field.dart';
import '../../../widget/primary_button.dart';
import '../../utils/constants.dart';
import '../../utils/responsive_util.dart';
class TeacherForgotPassword extends StatefulWidget {
  const TeacherForgotPassword({super.key});

  @override
  State<TeacherForgotPassword> createState() => _TeacherForgotPasswordState();
}

class _TeacherForgotPasswordState extends State<TeacherForgotPassword> {
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
                Navigator.push(context,MaterialPageRoute(builder: (context) => TeacherForgotPasswordOtp(),));

              },)

            ],
          ),
        ),
      ),);
  }
}
