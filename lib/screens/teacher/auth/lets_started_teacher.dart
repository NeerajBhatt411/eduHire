import 'package:eduhire/screens/teacher/auth/teacher_login.dart';
import 'package:eduhire/screens/teacher/auth/teacher_register.dart';
import 'package:flutter/material.dart';

import '../../../widget/primary_button.dart';
import '../../utils/constants.dart';
import '../../utils/responsive_util.dart';

class LetsStartedTeacher extends StatefulWidget {
  const LetsStartedTeacher({super.key});

  @override
  State<LetsStartedTeacher> createState() => _LetsStartedTeacherState();
}

class _LetsStartedTeacherState extends State<LetsStartedTeacher> {
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
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TeacherLogin(),));
            },backgroundColor: AppColors.lightGrey,textColor: AppColors.black,),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 24),),
            PrimaryButton(text: "Register", onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TeacherRegister(),));

            },)


          ]
          ,),
      ),
    );
  }
}
