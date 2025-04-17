import 'package:eduhire/screens/teacher/teacher_discover_screen.dart';
import 'package:eduhire/screens/teacher/teacher_home_screen.dart';
import 'package:eduhire/screens/teacher/teacher_jobs_screen.dart';
import 'package:eduhire/screens/teacher/teacher_profile_screen.dart';
import 'package:eduhire/screens/utils/constants.dart';
import 'package:flutter/material.dart';
class TeacherBottomNavigationBar extends StatefulWidget {
  const TeacherBottomNavigationBar({super.key});

  @override
  State<TeacherBottomNavigationBar> createState() => _TeacherBottomNavigationBarState();
}

class _TeacherBottomNavigationBarState extends State<TeacherBottomNavigationBar> {

  List<Widget> list = [TeacherHomeScreen(),TeacherDiscoverScreen(),TeacherJobsScreen(),TeacherProfileScreen(),];

  int _selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: list[_selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTap,
          elevation: 10,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_selectedIndex != 0)
                    Image.asset("lib/assets/images/home-2.png"), // Icon jab selected nahi ho
                  if (_selectedIndex == 0)
                    Text(
                      "Home",
                      style: TextStyle(
                        fontFamily: Fontfamily.fontFamily,
                        fontWeight: Fontfamily.bold,
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  if (_selectedIndex == 0)
                    SizedBox(height: 5),
                  if (_selectedIndex == 0)
                    Container(
                      height: 5,
                      width: 10,
                      color: AppColors.primary,
                    ),
                ],
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_selectedIndex != 1)
                    Image.asset("lib/assets/images/discover.png"), // Icon jab selected nahi ho
                  if (_selectedIndex == 1)
                    Text(
                      "Discover",
                      style: TextStyle(
                        fontFamily: Fontfamily.fontFamily,
                        fontWeight: Fontfamily.bold,
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  if (_selectedIndex == 1)
                    SizedBox(height: 5),
                  if (_selectedIndex == 1)
                    Container(
                      height: 5,
                      width: 10,
                      color: AppColors.primary,
                    ),
                ],
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_selectedIndex != 2)
                    Image.asset("lib/assets/images/briefcase.png"), // Icon jab selected nahi ho
                  if (_selectedIndex == 2)
                    Text(
                      "Jobs",
                      style: TextStyle(
                        fontFamily: Fontfamily.fontFamily,
                        fontWeight: Fontfamily.bold,
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  if (_selectedIndex == 2)
                    SizedBox(height: 5),
                  if (_selectedIndex == 2)
                    Container(
                      height: 5,
                      width: 10,
                      color: AppColors.primary,
                    ),
                ],
              ),
              label: "",
            ),  BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_selectedIndex != 3)
                    Image.asset("lib/assets/images/profile-circle.png"), // Icon jab selected nahi ho
                  if (_selectedIndex == 3)
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontFamily: Fontfamily.fontFamily,
                        fontWeight: Fontfamily.bold,
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  if (_selectedIndex == 3)
                    SizedBox(height: 5),
                  if (_selectedIndex == 3)
                    Container(
                      height: 5,
                      width: 10,
                      color: AppColors.primary,
                    ),
                ],
              ),
              label: "",
            ),




          ],
        )
    );
  }
}
