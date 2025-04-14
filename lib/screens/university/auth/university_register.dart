import 'package:eduhire/screens/university/auth/university_%20verify_otp.dart';
import 'package:eduhire/screens/university/auth/university_forgot_password.dart';
import 'package:eduhire/screens/university/auth/university_login.dart';
import 'package:eduhire/widget/primary_button.dart';
import 'package:flutter/material.dart';

import '../../../widget/custom_text_form_field.dart';
import '../../utils/constants.dart';
import '../../utils/responsive_util.dart';
class UniversityRegister extends StatefulWidget {
  const UniversityRegister({super.key});

  @override
  State<UniversityRegister> createState() => _UniversityRegisterState();
}

class _UniversityRegisterState extends State<UniversityRegister> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: ResponsiveUtil.screenHeight(context, 100),
          ),
          Center(
              child: Text(
                AppText.createAccountTitle,
                style: TextStyle(
                    fontFamily: Fontfamily.fontFamily,
                    fontWeight: Fontfamily.bold,
                    fontSize: FontSizes.title),
              )),
          SizedBox(
            height: ResponsiveUtil.screenHeight(context, 8),
          ),
          Center(
            child: Text(
              AppText.createAccountSubtitle,
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
                SizedBox(height: ResponsiveUtil.screenHeight(context, 8)),
                Text(
                  AppText.username,
                  style: TextStyle(
                      color: AppColors.black, fontWeight: Fontfamily.medium),
                ),
                SizedBox(height: ResponsiveUtil.screenHeight(context, 20)),
                CustomTextFormField(
                    controller: nameController,
                    text: "Name",
                    prefixIcon: Icons.person_outline),
                SizedBox(height: ResponsiveUtil.screenHeight(context, 20)),
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
      
              ],
      
            ),
      
          ),
          SizedBox(height: ResponsiveUtil.screenHeight(context, 32)),
          PrimaryButton(text: "Sign Up", onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => UniversityVerifyOTP(),));
      
          },),
          SizedBox(height: ResponsiveUtil.screenHeight(context, 24)),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UniversityLogin(),));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Center(child: Text("Already have an account?",style: TextStyle(fontFamily: Fontfamily.fontFamily,fontWeight: Fontfamily.medium,color: AppColors.softGrey))),
                SizedBox(width: ResponsiveUtil.screenWidth(context, 5),),
                Text("Sign in ",style: TextStyle(fontFamily: Fontfamily.fontFamily,fontWeight: Fontfamily.medium,color: AppColors.primary),)
            ],),
          )
      
      
      
        ],
      ),
    ),);
  }
}
