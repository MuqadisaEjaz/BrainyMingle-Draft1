import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallButton extends StatelessWidget {
  final String text;
  const SmallButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: const Color(0xFF313131),
            fontSize: 9.sp,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
