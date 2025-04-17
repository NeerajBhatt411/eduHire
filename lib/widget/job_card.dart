import 'package:flutter/material.dart';

import '../screens/utils/constants.dart';
import '../screens/utils/responsive_util.dart';

class JobCardWidget extends StatelessWidget {
  final String title;
  final String universityName;
  final String jobType;
  final String location;
  final String salary;
  final String closingDate;
  final String universityLogoPath; // Path for university logo
  final VoidCallback onApplyTap;
  final VoidCallback onSaveTap;
  final bool isSaved;

  const JobCardWidget({
    super.key,
    required this.title,
    required this.universityName,
    required this.jobType,
    required this.location,
    required this.salary,
    required this.closingDate,
    required this.universityLogoPath, // New field for logo path
    required this.onApplyTap,
    required this.onSaveTap,
    required this.isSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      constraints: const BoxConstraints(minHeight: 200),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 328,
            constraints: const BoxConstraints(minHeight: 140),
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          overflow: TextOverflow.ellipsis, // Ensure that the title doesn't overflow
                          maxLines: 1, // Limit the title to 2 lines
                          style: TextStyle(
                            fontFamily: Fontfamily.fontFamily,
                            fontWeight: Fontfamily.bold,
                            fontSize: FontSizes.subtitle,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: onSaveTap,
                        child: Container(
                          height: 24,
                          width: 24,
                          child: isSaved?Image.asset("lib/assets/images/save_icon_true.png"):Image.asset(
                            "lib/assets/images/save_icon.png",
                            color: null,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(height: ResponsiveUtil.screenHeight(context, 10)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      UniversityLogo(logoPath: universityLogoPath),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          universityName,
                          overflow: TextOverflow.ellipsis, // Ensure the university name doesn't overflow
                          maxLines: 1, // Limit to one line
                          style: TextStyle(
                            fontFamily: Fontfamily.fontFamily,
                            fontWeight: Fontfamily.regular,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: ResponsiveUtil.screenHeight(context, 20)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      _buildTag(jobType),
                      SizedBox(width: ResponsiveUtil.screenWidth(context, 10)),
                      _buildTag(location),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: ResponsiveUtil.screenHeight(context, 10)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      salary,
                      style: TextStyle(
                        fontFamily: Fontfamily.fontFamily,
                        fontWeight: Fontfamily.bold,
                        fontSize: 13,
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      "Closing $closingDate",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 10,
                        fontFamily: Fontfamily.fontFamily,
                        fontWeight: Fontfamily.regular,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: onApplyTap,
                  child: Container(
                    height: 32,
                    width: 85,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          fontFamily: Fontfamily.fontFamily,
                          fontWeight: Fontfamily.bold,
                          fontSize: 12,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 28,
        minWidth: 69,
        maxWidth: 100,
      ),
      decoration: BoxDecoration(
        color: AppColors.cardLightBlue,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Text(
            text,
            overflow: TextOverflow.ellipsis, // Ensure tag text doesn't overflow
            maxLines: 1, // Limit tag to 1 line
            style: TextStyle(
              fontFamily: Fontfamily.fontFamily,
              fontWeight: Fontfamily.regular,
              color: const Color(0xff1D7C4D),
              fontSize: 11,
            ),
          ),
        ),
      ),
    );
  }
}

class UniversityLogo extends StatelessWidget {
  final String logoPath;

  const UniversityLogo({super.key, required this.logoPath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 21,
      width: 21,
      child: Image.asset(logoPath),
    );
  }
}
