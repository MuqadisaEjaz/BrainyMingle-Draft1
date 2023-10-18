import 'package:brainy_mingles/const/app_colors.dart';
import 'package:brainy_mingles/const/sizedbox_extension.dart';
import 'package:brainy_mingles/models/student_info.dart';
import 'package:brainy_mingles/widgets/small_button.dart';
import 'package:brainy_mingles/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpStudentTwo extends StatefulWidget {
  const SignUpStudentTwo({super.key});

  @override
  State<SignUpStudentTwo> createState() => _SignUpStudentTwoState();
}

class _SignUpStudentTwoState extends State<SignUpStudentTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Image.asset("assets/login_top_shape_2.png"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Domain',
                  style: TextStyle(
                    color: AppColor.blueColor,
                    fontSize: 20.sp,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                10.h.sbh,
                SizedBox(
                  height: 100.h,
                  child: GridView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: StudentModel().domains.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 3.h,
                          mainAxisSpacing: 10.w,
                          mainAxisExtent: 35.h,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return SmallButton(
                          text: StudentModel().domains[index],
                        );
                      }),
                ),
                Text(
                  'Languages',
                  style: TextStyle(
                    color: AppColor.blueColor,
                    fontSize: 20.sp,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                10.h.sbh,
                SizedBox(
                  height: 150.h,
                  child: GridView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: StudentModel().languages.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 3.h,
                          mainAxisSpacing: 10.w,
                          mainAxisExtent: 35.h,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return SmallButton(
                          text: StudentModel().languages[index],
                        );
                      }),
                ),
                Text(
                  'Challenges',
                  style: TextStyle(
                    color: AppColor.blueColor,
                    fontSize: 20.sp,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                10.h.sbh,
                SizedBox(
                  height: 60.h,
                  child: GridView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: StudentModel().challanges.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 3.h,
                          mainAxisSpacing: 10.w,
                          mainAxisExtent: 35.h,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return SmallButton(
                          text: StudentModel().challanges[index],
                        );
                      }),
                ),
                Text(
                  'Preferences',
                  style: TextStyle(
                    color: AppColor.blueColor,
                    fontSize: 20.sp,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                10.h.sbh,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gender',
                        style: TextStyle(
                          color: AppColor.blueColor,
                          fontSize: 20.sp,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      10.h.sbh,
                      SizedBox(
                        height: 45.h,
                        child: GridView.builder(
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: StudentModel().gender.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 3.h,
                                    mainAxisSpacing: 10.w,
                                    mainAxisExtent: 35.h,
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return SmallButton(
                                text: StudentModel().gender[index],
                              );
                            }),
                      ),
                      Text(
                        'Mode',
                        style: TextStyle(
                          color: AppColor.blueColor,
                          fontSize: 20.sp,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      10.h.sbh,
                      SizedBox(
                        height: 45.h,
                        child: GridView.builder(
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: StudentModel().mode.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 3.h,
                                    mainAxisSpacing: 10.w,
                                    mainAxisExtent: 35.h,
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return SmallButton(
                                text: StudentModel().mode[index],
                              );
                            }),
                      ),
                      Text(
                        'Sessions',
                        style: TextStyle(
                          color: AppColor.blueColor,
                          fontSize: 20.sp,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      10.h.sbh,
                      SizedBox(
                        height: 60.h,
                        child: GridView.builder(
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: StudentModel().session.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 3.h,
                                    mainAxisSpacing: 10.w,
                                    mainAxisExtent: 35.h,
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return SmallButton(
                                text: StudentModel().session[index],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                MyButton(text: "Register"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
