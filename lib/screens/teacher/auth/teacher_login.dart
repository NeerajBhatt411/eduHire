import 'package:eduhire/screens/teacher/auth/teacher_forgot_password.dart';
import 'package:eduhire/screens/teacher/auth/teacher_register.dart';
import 'package:flutter/material.dart';

import '../../../widget/custom_text_form_field.dart';
import '../../../widget/primary_button.dart';
import '../../utils/constants.dart';
import '../../utils/responsive_util.dart';
class TeacherLogin extends StatefulWidget {
  const TeacherLogin({super.key});

  @override
  State<TeacherLogin> createState() => _TeacherLoginState();
}

class _TeacherLoginState extends State<TeacherLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ResponsiveUtil.screenHeight(context, 120),
            ),
            Center(
                child: Text(
                  AppText.loginTitle,
                  style: TextStyle(
                      fontFamily: Fontfamily.fontFamily,
                      fontWeight: Fontfamily.bold,
                      fontSize: FontSizes.title),
                )),
            SizedBox(
              height: ResponsiveUtil.screenHeight(context, 7),
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                AppText.loginSubtitle,
                style: TextStyle(
                    fontSize: FontSizes.subtitle,
                    fontFamily: Fontfamily.fontFamily,
                    fontWeight: Fontfamily.regular,
                    color: AppColors.textGrey),
              ),
            ),
            SizedBox(
              height: ResponsiveUtil.screenHeight(context, 60),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppText.email,
                    style: TextStyle(
                        color: AppColors.black, fontWeight: Fontfamily.medium),
                  ),
                  SizedBox(height: ResponsiveUtil.screenHeight(context, 8)),
                  CustomTextFormField(
                      controller: emailController,
                      text: "Email",
                      prefixIcon: Icons.email_outlined),
                  SizedBox(height: ResponsiveUtil.screenHeight(context, 24)),
                  Text(
                    AppText.password,
                    style: TextStyle(
                        color: AppColors.black, fontWeight: Fontfamily.medium),
                  ),
                  SizedBox(height: ResponsiveUtil.screenHeight(context, 8)),

                  CustomTextFormField(
                    controller: passwordController,
                    text: "Password",
                    prefixIcon: Icons.lock_outline,
                    isPassword: true,
                  ),
                  SizedBox(height: ResponsiveUtil.screenHeight(context, 16)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherForgotPassword(),));
                    },
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(AppText.forgotPassword,style: TextStyle(color: AppColors.softGrey),)),
                  )
                ],

              ),

            ),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 32)),
            PrimaryButton(text: "Login", onTap: () {

            },),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 24)),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => TeacherRegister(),));
                },
                child: Center(child: Text("Create a new accouunt",style: TextStyle(color: AppColors.primary,fontFamily: Fontfamily.fontFamily,fontWeight: Fontfamily.medium),)))


          ],
        ),
      ),
    );
  }
}
