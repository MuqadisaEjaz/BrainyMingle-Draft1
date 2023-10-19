import 'package:brainy_mingles/const/app_colors.dart';
import 'package:brainy_mingles/const/sizedbox_extension.dart';
import 'package:brainy_mingles/widgets/custom_appbar.dart';
import 'package:brainy_mingles/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ArrangeASessionView extends StatefulWidget {
  final String mentorEmail; // Add this parameter

  const ArrangeASessionView({required this.mentorEmail, Key? key})
      : super(key: key);

  @override
  State<ArrangeASessionView> createState() => _ArrangeASessionViewState();
}

class _ArrangeASessionViewState extends State<ArrangeASessionView> {
  String sessionType =
      'Online'; // Default to 'Online', or you can set it to 'Physical'
  String time = '';
  String topic = '';

  // Function to create and send the session request to the backend
  Future<void> createSessionRequest() async {
    // Create a session request data object
    final sessionRequest = {
      "studentEmail":
          'aimenarshad@gmail.com', // Replace with the actual student's email
      "sessionType": sessionType,
      "time": time,
      "topic": topic,
    };

    // Create the request data
    final requestData = {
      "mentorEmail": widget.mentorEmail,
      "sessionRequests": [sessionRequest],
    };

    final response = await http.post(
      Uri.parse('http://10.0.2.2:4200/api/student/session-request'),
      body: jsonEncode(requestData),
      headers: {"Content-Type": "application/json"},
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(response.statusCode == 201
            ? 'Session request created successfully'
            : 'Session request creation failed'),
      ),
    );
  }

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
              InkWell(
                onTap: () {
                  setState(() {
                    // Toggles the dropdown when clicking the "Session" label
                    sessionType =
                        sessionType == 'Online' ? 'Physical' : 'Online';
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 55.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFEEEEEE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        sessionType,
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
                      ),
                    ],
                  ),
                ),
              ),
              15.h.sbh,
              TextFormField(
                onChanged: (value) {
                  time = value;
                },
                decoration: InputDecoration(
                  labelText: 'Available Slots',
                  border: OutlineInputBorder(),
                ),
              ),
              15.h.sbh,
              TextFormField(
                onChanged: (value) {
                  topic = value;
                },
                decoration: InputDecoration(
                  labelText: 'Topic',
                  border: OutlineInputBorder(),
                ),
              ),
              15.h.sbh,
              MyButton(
                text: "Request Session",
                onTap: createSessionRequest,
              )
            ],
          ),
        )
      ],
    );
  }
}
