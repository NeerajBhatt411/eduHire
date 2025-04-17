import 'package:flutter/material.dart';

import '../screens/utils/responsive_util.dart';
import 'job_card.dart';
class TeacherAppliedJobWidget extends StatefulWidget {
  const TeacherAppliedJobWidget({super.key});

  @override
  State<TeacherAppliedJobWidget> createState() => _TeacherAppliedJobWidgetState();
}

class _TeacherAppliedJobWidgetState extends State<TeacherAppliedJobWidget> {
  @override
  Widget build(BuildContext context) {
    return    Expanded(
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
            )));
  }
}
