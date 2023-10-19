import 'package:brainy_mingles/const/sizedbox_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FacultyDrawer extends StatelessWidget {
  const FacultyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 260.w,
      decoration: BoxDecoration(color: Color(0xFFF6F6F6)),
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 15.h, left: 24.w, right: 24.h),
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25.sp,
                  backgroundImage: AssetImage("assets/mentor_images.png"),
                ),
                12.w.sbw,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FACULTY',
                      style: TextStyle(
                        color: const Color(0xFF757575),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'XYZ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFF6F6F6)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 12.sp,
                    ),
                  ),
                )
              ],
            ),
            80.h.sbh,
            Text(
              'MAIN',
              style: TextStyle(
                color: const Color(0xFF757575),
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            20.h.sbh,
            Text(
              'Approve a Mentor',
              style: TextStyle(
                color: const Color(0xFF757575),
                fontSize: 14.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            80.h.sbh,
            Text(
              'SETTINGS',
              style: TextStyle(
                color: const Color(0xFF757575),
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            20.h.sbh,
            Row(
              children: [
                SvgPicture.asset(
                  "assets/Settings.svg",
                  height: 20.h,
                  width: 20.w,
                ),
                12.w.sbw,
                Text(
                  'Settings',
                  style: TextStyle(
                    color: const Color(0xFF757575),
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                SvgPicture.asset(
                  "assets/dropdown.svg",
                  height: 20.h,
                  width: 20.w,
                ),
              ],
            ),
            34.h.sbh,
            reusableRow("Help", "assets/Help-circle.svg"),
            34.h.sbh,
            Row(
              children: [
                SvgPicture.asset(
                  "assets/Log-out.svg",
                  height: 20.h,
                  width: 20.w,
                ),
                12.w.sbw,
                Text(
                  "Logout Account",
                  style: TextStyle(
                    color: const Color(0xffD55F5A),
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// MENTOR Drawer
class MentorDrawer extends StatelessWidget {
  const MentorDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 260.w,
      decoration: BoxDecoration(color: Color(0xFFF6F6F6)),
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 15.h, left: 24.w, right: 24.h),
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25.sp,
                  backgroundImage: AssetImage("assets/mentor_images.png"),
                ),
                12.w.sbw,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MENTOR',
                      style: TextStyle(
                        color: const Color(0xFF757575),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'XYZ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFF6F6F6)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 12.sp,
                    ),
                  ),
                )
              ],
            ),
            80.h.sbh,
            Text(
              'MAIN',
              style: TextStyle(
                color: const Color(0xFF757575),
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            20.h.sbh,
            Text(
              'Find FYP Members',
              style: TextStyle(
                color: const Color(0xFF757575),
                fontSize: 14.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            20.h.sbh,
            Row(
              children: [
                Text(
                  'Announcements',
                  style: TextStyle(
                    color: const Color(0xFF757575),
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                SvgPicture.asset(
                  "assets/dropdown.svg",
                  height: 20.h,
                  width: 20.w,
                ),
              ],
            ),
            20.h.sbh,
            Text(
              'Resources',
              style: TextStyle(
                color: const Color(0xFF757575),
                fontSize: 14.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            20.h.sbh,
            Text(
              'Session Requests',
              style: TextStyle(
                color: const Color(0xFF757575),
                fontSize: 14.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            20.h.sbh,
            Text(
              'Report and Block',
              style: TextStyle(
                color: const Color(0xFF757575),
                fontSize: 14.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            80.h.sbh,
            Text(
              'SETTINGS',
              style: TextStyle(
                color: const Color(0xFF757575),
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            20.h.sbh,
            Row(
              children: [
                SvgPicture.asset(
                  "assets/Settings.svg",
                  height: 20.h,
                  width: 20.w,
                ),
                12.w.sbw,
                Text(
                  'Settings',
                  style: TextStyle(
                    color: const Color(0xFF757575),
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                SvgPicture.asset(
                  "assets/dropdown.svg",
                  height: 20.h,
                  width: 20.w,
                ),
              ],
            ),
            34.h.sbh,
            reusableRow("Help", "assets/Help-circle.svg"),
            34.h.sbh,
            Row(
              children: [
                SvgPicture.asset(
                  "assets/Log-out.svg",
                  height: 20.h,
                  width: 20.w,
                ),
                12.w.sbw,
                Text(
                  "Logout Account",
                  style: TextStyle(
                    color: const Color(0xffD55F5A),
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// Reusable Row

Widget reusableRow(String text, String iconImage) {
  return Row(
    children: [
      SvgPicture.asset(
        iconImage,
        height: 20.h,
        width: 20.w,
      ),
      12.w.sbw,
      Text(
        text,
        style: TextStyle(
          color: const Color(0xFF757575),
          fontSize: 14.sp,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
