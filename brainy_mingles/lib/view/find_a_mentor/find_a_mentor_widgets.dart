import 'package:brainy_mingles/const/sizedbox_extension.dart';
import 'package:brainy_mingles/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MentorBox extends StatefulWidget {
  const MentorBox({super.key});

  @override
  State<MentorBox> createState() => _MentorBoxState();
}

class _MentorBoxState extends State<MentorBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 20.h),
      padding:
          EdgeInsets.only(top: 15.h, left: 15.w, right: 15.w, bottom: 12.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 0.30,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Color(0xE88A8888),
          ),
          borderRadius: BorderRadius.circular(18),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x14323247),
            blurRadius: 32,
            offset: Offset(0, 24),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 75.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(
                            image: AssetImage("assets/profile.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  5.h.sbh,
                  Row(
                    children: List.generate(
                        5,
                        (index) => Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 12.sp,
                            )),
                  )
                ],
              ),
              13.w.sbw,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'XYZ',
                    style: TextStyle(
                      color: const Color(0xFF404345),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Computer Engineer',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'FAST Nuces',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Expertise: ',
                    style: TextStyle(
                      color: const Color(0xFF3A2F2F),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Budget ',
                    style: TextStyle(
                      color: const Color(0xFF3A2F2F),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                "assets/message.png",
                width: 24.w,
                height: 18.h,
                fit: BoxFit.cover,
              )
            ],
          ),
          10.h.sbh,
          Row(
            children: [
              MyButton(
                width: 135.w,
                height: 40.h,
                text: "Arrange a Session",
                textSize: 10.sp,
              ),
              const Spacer(),
              MyButton(
                width: 135.w,
                height: 40.h,
                text: "Make your Bid",
                textSize: 10.sp,
              ),
            ],
          )
        ],
      ),
    );
  }
}
