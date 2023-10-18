import 'package:brainy_mingles/const/app_colors.dart';
import 'package:brainy_mingles/const/sizedbox_extension.dart';
import 'package:brainy_mingles/widgets/custom_appbar.dart';
import 'package:brainy_mingles/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArrangeASessionView extends StatefulWidget {
  const ArrangeASessionView({super.key});

  @override
  State<ArrangeASessionView> createState() => _ArrangeASessionViewState();
}

class _ArrangeASessionViewState extends State<ArrangeASessionView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        100.h.sbh,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            children: [
              Text(
                'Arrange a Session',
                style: TextStyle(
                  color: AppColor.blueColor,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              40.h.sbh,
              Container(
                width: double.infinity,
                height: 55.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFEEEEEE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Session",
                      style: TextStyle(
                        color: const Color(0xFF8390A1),
                        fontSize: 15.sp,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              15.h.sbh,
              const SessionButton(text: 'Available Slots'),
              15.h.sbh,
              const SessionButton(text: 'Topic'),
              15.h.sbh,
              const MyButton(text: "Request Session")
            ],
          ),
        )
      ],
    );
  }
}

class SessionButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const SessionButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55.h,
        decoration: ShapeDecoration(
          color: const Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: const Color(0xFF8390A1),
              fontSize: 15.sp,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
