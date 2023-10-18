import 'package:brainy_mingles/const/app_colors.dart';
import 'package:brainy_mingles/const/sizedbox_extension.dart';
import 'package:brainy_mingles/view/dashboard/dashboard_widgets.dart';
import 'package:brainy_mingles/widgets/custom_appbar.dart';
import 'package:brainy_mingles/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FacultyDrawer(),
      body: Column(
        children: [
          CustomAppBar(),
          16.h.sbh,
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 13.w),
              children: [
                Center(
                  child: Text(
                    'Dashboard',
                    style: TextStyle(
                      color: AppColor.blueColor,
                      fontSize: 20.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                15.h.sbh,
                DashboardInfoBox(
                    boxName: "School",
                    imageAddress: "assets/student.png",
                    name: "Usman",
                    email: "usmanmuaz@gmail.com",
                    phoneNo: "0300XXXXXXX",
                    degree: "BSCS",
                    batch: "2022",
                    status: "Current"),
                DashboardInfoBox(
                    boxName: "Interest",
                    imageAddress: "assets/interest.png",
                    name: "Usman",
                    email: "usmanmuaz@gmail.com",
                    phoneNo: "0300XXXXXXX",
                    degree: "BSCS",
                    batch: "2022",
                    status: "Current"),
                DashboardInfoBox(
                    boxName: "Sessions",
                    imageAddress: "assets/sessions.png",
                    name: "Usman",
                    email: "usmanmuaz@gmail.com",
                    phoneNo: "0300XXXXXXX",
                    degree: "BSCS",
                    batch: "2022",
                    status: "Current"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
