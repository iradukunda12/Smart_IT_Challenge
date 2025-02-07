import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_it_challenge_ui/components/responsibility.dart';
import 'package:smart_it_challenge_ui/components/skills_chip.dart';
import 'package:smart_it_challenge_ui/components/tabs.dart';

class ViewJobList extends StatelessWidget {
  const ViewJobList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    "lib/icons/software.jpg",
                    height: 200.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: -15.h,
                    left: 0.w,
                    right: 0.w,
                    child: Center(
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ClipOval(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "lib/icons/google.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Text(
                      'Product Designer',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'California, USA',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Tabs()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Job Responsibilities',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    JobResponsibility(
                      text:
                          'Deliver a well-crafted design that follows standard for consistency in quality and experience.',
                    ),
                    JobResponsibility(
                      text:
                          'Design creative solutions that deliver not only value customer but also solve business objectives.',
                    ),
                    JobResponsibility(
                      text:
                          'You are also required to contribute to the design and critics, conceptual discussion, and also maintaining consistency of design system.',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Skills Needed',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        SkillsChip(label: 'Lead'),
                        SizedBox(width: 8.w),
                        Text(
                          "•",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        SizedBox(width: 8.w),
                        SkillsChip(label: 'UX Design'),
                        SizedBox(width: 8.w),
                        Text(
                          "•",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        SizedBox(width: 8.w),
                        SkillsChip(label: 'Problem Solving'),
                        SizedBox(width: 8.w),
                        Text(
                          "•",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        SizedBox(width: 8.w),
                        SkillsChip(label: 'Critical'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    SizedBox(
                      width: 260.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 35, 115, 207),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 16.h,
                          ),
                          child: Text(
                            'Apply Now',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Container(
                      width: 55.w,
                      height: 58,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 35, 115, 207),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: IconButton(
                        icon: Image.asset(
                          "lib/icons/message.png",
                          width: 26.w,
                          height: 26.h,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
