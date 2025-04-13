import 'package:eduhire/screens/utils/constants.dart';
import 'package:eduhire/screens/utils/responsive_util.dart';
import 'package:flutter/material.dart';
class UniversityLogin extends StatelessWidget {
  const UniversityLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(height: ResponsiveUtil.screenHeight(context,120),),
          Center(child: Text(AppText.loginTitle,style: TextStyle(fontFamily: Fontfamily.fontFamily,fontWeight: Fontfamily.bold,fontSize: FontSizes.title),))
        ],),
      ),
    );
  }
}
