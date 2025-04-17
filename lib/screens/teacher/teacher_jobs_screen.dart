import 'package:eduhire/widget/teacher_applied_job_widget.dart';
import 'package:eduhire/widget/teacher_saved_job_widget.dart';
import 'package:flutter/material.dart';

import '../../widget/dual_tab_selector.dart';
import '../utils/responsive_util.dart';
class TeacherJobsScreen extends StatefulWidget {
  const TeacherJobsScreen({super.key});

  @override
  State<TeacherJobsScreen> createState() => _TeacherJobsScreenState();
}

class _TeacherJobsScreenState extends State<TeacherJobsScreen> {
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height:ResponsiveUtil.screenHeight(context, 60),),
          DualTabSelector(leftLabel: "Applied", rightLabel: "Saved", selectedIndex: selectedIndex, onLeftTap: () {
    setState(() {
    selectedIndex = 0;

    });

    }, onRightTap: () {
    setState(() {
    selectedIndex=1;
    });


    },),
          SizedBox(height: ResponsiveUtil.screenHeight(context, 20,)),
          Expanded(child: selectedIndex==0?TeacherAppliedJobWidget():TeacherSavedJobWidget()),
        ],
      ));

    }
}
