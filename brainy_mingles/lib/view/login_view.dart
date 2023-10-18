import 'package:brainy_mingles/const/app_colors.dart';
import 'package:brainy_mingles/const/sizedbox_extension.dart';
import 'package:brainy_mingles/view/main_home_view.dart';
import 'package:brainy_mingles/widgets/custom_textfield.dart';
import 'package:brainy_mingles/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

bool hidePassword = true;

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Image.asset(
            "assets/login_top.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(child: SvgPicture.asset("assets/login_illustration.svg")),
          20.h.sbh,
          Center(
            child: Text(
              'LOGIN',
              style: TextStyle(
                color: AppColor.blueColor,
                fontSize: 36.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                20.h.sbh,
                const CustomTextField(hint: "Enter your email"),
                20.h.sbh,
                CustomTextField(
                  hint: "Enter your password",
                  hidePassword: hidePassword,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      icon: SvgPicture.asset("assets/visibility_password.svg")),
                ),
                20.h.sbh,
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColor.purpleColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
                15.h.sbh,
                MyButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainHomeView()));
                    },
                    text: "Login"),
                50.h.sbh,
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account? ',
                        style: TextStyle(
                          color: const Color(0xFF1E232C),
                          fontSize: 15.sp,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: 'Register Now',
                        style: TextStyle(
                          color: AppColor.blueColor,
                          fontSize: 15.sp,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
