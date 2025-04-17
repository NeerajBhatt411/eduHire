import 'package:eduhire/screens/utils/constants.dart';
import 'package:eduhire/screens/utils/responsive_util.dart';
import 'package:eduhire/widget/dual_tab_selector.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_search_bar.dart';
import '../../widget/job_card.dart';

class TeacherHomeScreen extends StatefulWidget {
  const TeacherHomeScreen({super.key});

  @override
  State<TeacherHomeScreen> createState() => _TeacherHomeScreenState();
}

class _TeacherHomeScreenState extends State<TeacherHomeScreen> {
  int selectedIndex = 0; // 0 = Recommended, 1 = Trending

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Welcome Back 🖐",
                    style: TextStyle(
                      height: 1.0,
                      fontFamily: Fontfamily.fontFamily,
                      fontWeight: Fontfamily.regular,
                      color: AppColors.grey,
                    ),
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
                ],
              ),
              // Divider(color: Colors.black,thickness: 2.0,),
              Text(
                "Neeraj",
                style: TextStyle(
                    fontFamily: Fontfamily.fontFamily,
                    fontWeight: Fontfamily.bold,
                    fontSize: FontSizes.title),
              ),
              SizedBox(
                height: ResponsiveUtil.screenHeight(context, 10),
              ),
              Container(
                height: 165,
                width: 327,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Helping you teach \nwhere you truly belong",
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: Fontfamily.fontFamily,
                            fontWeight: Fontfamily.semiBold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: ResponsiveUtil.screenHeight(context, 15),
                      ),
                      CustomSearchBar(title: "Search", controller: TextEditingController(), onChanged: (p0) {

                      },),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveUtil.screenHeight(context, 10),
              ),

              SizedBox(
                height: ResponsiveUtil.screenHeight(context, 10),
              ),
              DualTabSelector(leftLabel: "Recommended", rightLabel: "Trending", selectedIndex: selectedIndex, onLeftTap: () {
                setState(() {
                  selectedIndex = 0;

                });

              }, onRightTap: () {
                setState(() {
                  selectedIndex=1;
                });


              },),
              SizedBox(height: ResponsiveUtil.screenHeight(context, 20,)),

              Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  JobCardWidget(
                    title: "Assistant Professor",
                    universityName: "Dev Bhoomi Uttarakhand university",
                    jobType: "Full time",
                    location: "Dehradun",
                    salary: "50k-60k",
                    closingDate: "24 April 2025",
                    universityLogoPath: "lib/assets/images/dbuulogo.png", // Path for logo
                    isSaved: true, // or false
                    onApplyTap: () {
                      print("Apply tapped");
                    },
                    onSaveTap: () {
                      print("Save tapped");
                    },
                  ),
                  SizedBox(
                    height: ResponsiveUtil.screenHeight(context, 10),
                  ),
                  JobCardWidget(
                    title: "Associate Professor",
                    universityName: "Dit University ",
                    jobType: "Full time",
                    location: "Dehradun",
                    salary: "70k-60k",
                    closingDate: "25 April 2025",
                    universityLogoPath: "lib/assets/images/ditlogo.png", // Path for logo
                    isSaved: false, // or false
                    onApplyTap: () {
                      print("Apply tapped");
                    },
                    onSaveTap: () {
                      print("Save tapped");
                    },
                  ),
                  SizedBox(
                    height: ResponsiveUtil.screenHeight(context, 10),
                  ),
                  JobCardWidget(
                    title: "Assistant Professor",
                    universityName: "Dev Bhoomi Uttarakhand university",
                    jobType: "Full time",
                    location: "Dehradun",
                    salary: "50k-60k",
                    closingDate: "24 April 2025",
                    universityLogoPath: "lib/assets/images/dbuulogo.png", // Path for logo
                    isSaved: false, // or false
                    onApplyTap: () {
                      print("Apply tapped");
                    },
                    onSaveTap: () {
                      print("Save tapped");
                    },
                  ),
                  SizedBox(
                    height: ResponsiveUtil.screenHeight(context, 10),
                  ),
                  JobCardWidget(
                    title: "Assistant Professor",
                    universityName: "Dev Bhoomi Uttarakhand university",
                    jobType: "Full time",
                    location: "Dehradun",
                    salary: "50k-60k",
                    closingDate: "24 April 2025",
                    universityLogoPath: "lib/assets/images/dbuulogo.png", // Path for logo
                    isSaved: false, // or false
                    onApplyTap: () {
                      print("Apply tapped");
                    },
                    onSaveTap: () {
                      print("Save tapped");
                    },
                  ),
                  SizedBox(
                    height: ResponsiveUtil.screenHeight(context, 30),
                  ),
                ],
              ))),
            ],
          ),
        ),
      ),
    );
  }
}
