import 'package:eduhire/screens/get_started_screen.dart';
import 'package:eduhire/screens/utils/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GetStartedScreen(),));
    },);

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            AppText.appName,
            style: TextStyle(
                color: AppColors.white,
                fontSize: 56,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat'),
          )),
        ],
      ),
    );
  }
}
