import 'package:brainy_mingles/const/sizedbox_extension.dart';
import 'package:brainy_mingles/view/sign_up_student/sign_up_student_view.dart';
import 'package:brainy_mingles/widgets/custom_textfield.dart';
import 'package:brainy_mingles/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignUpMentorOne extends StatefulWidget {
  const SignUpMentorOne({super.key});

  @override
  State<SignUpMentorOne> createState() => _SignUpMentorOneState();
}

class _SignUpMentorOneState extends State<SignUpMentorOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Image.asset("assets/login_top_shape.png"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Text(
                  'Let’s Join',
                  style: TextStyle(
                    color: const Color(0xFF405897),
                    fontSize: 36.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                26.h.sbh,
                const CustomTextField(hint: "Name"),
                12.h.sbh,
                const CustomTextField(hint: "Username"),
                12.h.sbh,
                const CustomTextField(hint: "Email"),
                12.h.sbh,
                const CustomTextField(hint: "Phone No"),
                12.h.sbh,
                CustomTextField(
                  hint: "Password",
                  hidePassword: hidePassword,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      icon: SvgPicture.asset("assets/visibility_password.svg")),
                ),
                12.h.sbh,
                CustomTextField(
                  hint: "Confirm password",
                  hidePassword: hideConfirmPassword,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hideConfirmPassword = !hideConfirmPassword;
                        });
                      },
                      icon: SvgPicture.asset("assets/visibility_password.svg")),
                ),
                20.h.sbh,
                MyButton(width: 150, textSize: 13.sp, text: "Proceed to next"),
                Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
