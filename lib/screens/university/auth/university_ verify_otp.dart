import 'package:eduhire/screens/utils/constants.dart';
import 'package:eduhire/screens/utils/responsive_util.dart';
import 'package:flutter/material.dart';
class UniversityVerifyOTP extends StatelessWidget {
  const UniversityVerifyOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: ResponsiveUtil.screenHeight(context, 70),),
              Center(child: Text(AppText.verification,style: TextStyle(fontWeight: Fontfamily.bold,fontFamily: Fontfamily.fontFamily,fontSize: FontSizes.title),)),
              Center(child: Text(AppText.verificationDesc, textAlign:TextAlign.center, style: TextStyle(fontSize: FontSizes.subtitle, fontFamily: Fontfamily.fontFamily,fontWeight: Fontfamily.regular,color: AppColors.softGrey),),),
              SizedBox(height: ResponsiveUtil.screenHeight(context, 50),),
            ],
          ),
        ),
      ),

    );
  }
}
