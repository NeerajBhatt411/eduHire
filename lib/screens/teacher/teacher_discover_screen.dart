import 'package:eduhire/screens/utils/constants.dart';
import 'package:eduhire/screens/utils/responsive_util.dart';
import 'package:eduhire/widget/custom_search_bar.dart';
import 'package:eduhire/widget/discover_job_card.dart';
import 'package:flutter/material.dart';

import '../../widget/dual_tab_selector.dart';
import '../../widget/job_card.dart';
class TeacherDiscoverScreen extends StatefulWidget {
  const TeacherDiscoverScreen({super.key});

  @override
  State<TeacherDiscoverScreen> createState() => _TeacherDiscoverScreenState();
}

class _TeacherDiscoverScreenState extends State<TeacherDiscoverScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ResponsiveUtil.screenHeight(context, 60),),
            CustomSearchBar(title: "Search", controller: TextEditingController(), onChanged: (p0) {

            },),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 20),),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(children: [
               DiscoverJobCard(title: "Location", imagePath: "lib/assets/images/location.png", onTap: () {

               },),
               SizedBox(width: ResponsiveUtil.screenWidth(context, 10),),

               DiscoverJobCard(title: "Subject/Grade", imagePath: "lib/assets/images/subject.png", textColor: Color(0xff995100),backgroundColor: Color(0xffFFE7CC), onTap: () {

               },),
             ],),
           ),
            SizedBox(height: ResponsiveUtil.screenHeight(context, 20),),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(children: [
               DiscoverJobCard(title: "Job Type", imagePath: "lib/assets/images/job_type.png",textColor: AppColors.primary,backgroundColor: Color(0xffCCEBFF), onTap: () {

               },),
               SizedBox(width: ResponsiveUtil.screenWidth(context, 10),),

               DiscoverJobCard(title: "Qualification", imagePath: "lib/assets/images/qualification.png",textColor: Color(0xff301584),backgroundColor: Color(0xffDCD3F8), onTap: () {

               },),
             ],),
           ),
            SizedBox(height:ResponsiveUtil.screenHeight(context, 20),),
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
      )
    );
  }
}
