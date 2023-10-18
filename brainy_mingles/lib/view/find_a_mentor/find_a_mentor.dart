import 'package:brainy_mingles/const/app_colors.dart';
import 'package:brainy_mingles/const/sizedbox_extension.dart';
import 'package:brainy_mingles/view/find_a_mentor/find_a_mentor_widgets.dart';
import 'package:brainy_mingles/widgets/custom_appbar.dart';
import 'package:brainy_mingles/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FindAMentorView extends StatefulWidget {
  const FindAMentorView({super.key});

  @override
  State<FindAMentorView> createState() => _FindAMentorViewState();
}

class _FindAMentorViewState extends State<FindAMentorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                17.h.sbh,
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Find ',
                        style: TextStyle(
                          color: AppColor.blueColor,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'your mentor',
                        style: TextStyle(
                          color: const Color(0xFFA0A4A8),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                10.h.sbh,
                CustomTextField(
                  hint: "Search your mentors etc",
                  borderRadius: BorderRadius.circular(18),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: SvgPicture.asset(
                      "assets/search_icon.svg",
                    ),
                  ),
                ),
              ],
            ),
          ),
          10.h.sbh,
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 17.w, right: 17.w, top: 10.h),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const MentorBox();
                  })),
        ],
      ),
    );
  }
}
