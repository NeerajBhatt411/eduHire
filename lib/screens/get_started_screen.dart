import 'package:eduhire/screens/identity.dart';
import 'package:eduhire/screens/utils/constants.dart';
import 'package:eduhire/screens/utils/responsive_util.dart';
import 'package:eduhire/widget/primary_button.dart';
import 'package:flutter/material.dart';
class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ResponsiveUtil.screenHeight(context, 120),),
              Center(child: Image.asset("lib/assets/images/job_hunt1.png")),
              SizedBox(height: ResponsiveUtil.screenHeight(context, 30),),
              Center(child: Text("Welcome To EduHire!",style: TextStyle(fontSize: FontSizes.title,fontFamily: "Montserrat",fontWeight:FontWeight.w700,),)),
              SizedBox(height: ResponsiveUtil.screenHeight(context, 10),),
              Center(child: Text("Join the largest network of educators in India. Find your next teaching opportunity today!",textAlign: TextAlign.center,style: TextStyle(fontSize:FontSizes.subtitle, fontFamily: Fontfamily.fontFamily,fontWeight:Fontfamily.regular,color: AppColors.subtitleColor),)),
              SizedBox(height: ResponsiveUtil.screenHeight(context, 110),),
              PrimaryButton(text: "Get Started", onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Identity(),));
              },)

            ],
          ),
        ),
      ),
    );
  }
}
