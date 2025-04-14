import 'package:eduhire/screens/teacher/auth/lets_started_teacher.dart';
import 'package:eduhire/screens/university/auth/lets_started_university.dart';
import 'package:eduhire/screens/utils/constants.dart';
import 'package:eduhire/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:eduhire/screens/utils/responsive_util.dart';

class Identity extends StatelessWidget {
  const Identity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: ResponsiveUtil.screenHeight(context, 160),),
            Center(
                child: Text(
              AppText.appName,
              style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 56,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat'),
            )),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 70),),
            Image.asset("lib/assets/images/job_hunt2.png"),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 20),),
            Text("How Do you Identify\nyourself?" ,textAlign: TextAlign.center,style: TextStyle(fontSize: FontSizes.title,fontFamily: Fontfamily.fontFamily,fontWeight:Fontfamily.bold,),),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 40),),
            PrimaryButton(text: "I am a University", onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LetsStartedUniversity(),));
            
            },backgroundColor: AppColors.lightGrey,textColor: AppColors.black,),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 20),),
            
            PrimaryButton(text: "I am a Teacher", onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LetsStartedTeacher(),));


            },)
            
            
          ],
        ),
      ),
    );
  }
}
