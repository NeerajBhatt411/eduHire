import 'package:eduhire/screens/university/auth/university_login.dart';
import 'package:eduhire/screens/university/auth/university_register.dart';
import 'package:eduhire/screens/utils/responsive_util.dart';
import 'package:eduhire/widget/primary_button.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
class LetsStartedUniversity extends StatelessWidget {
  const LetsStartedUniversity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: ResponsiveUtil.screenHeight(context, 120),),
            Center(child: Image.asset("lib/assets/images/job_hunt3.png")),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 24),),
            Center(child: Text("Let's Get Started!" ,textAlign: TextAlign.center,style: TextStyle(fontSize: FontSizes.title,fontFamily: Fontfamily.fontFamily,fontWeight:Fontfamily.bold,),)),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 8),),
            Text("Connect here to shape the future of learning together!",textAlign: TextAlign.center,style: TextStyle(fontSize:FontSizes.subtitle, fontFamily: Fontfamily.fontFamily,fontWeight:Fontfamily.regular,color: AppColors.subtitleColor),),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 44),),
            PrimaryButton(text: "Login", onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UniversityLogin(),));
            },backgroundColor: AppColors.lightGrey,textColor: AppColors.black,),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 24),),
            PrimaryButton(text: "Register", onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UniversityRegister(),));

            },)


          ]
          ,),
      ),
    );
  }
}
