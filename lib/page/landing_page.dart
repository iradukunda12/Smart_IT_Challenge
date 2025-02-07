import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_it_challenge_ui/components/recent_job_list.dart';
import 'package:smart_it_challenge_ui/components/recomendation.dart';
import 'package:smart_it_challenge_ui/components/search_input.dart';
import 'package:smart_it_challenge_ui/components/view_job_list.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 395.w,
                  height: 170.h,
                  color: const Color.fromARGB(255, 35, 115, 207),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hello",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Leslie Alexander",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 63.w,
                        ),
                        Expanded(
                          child: Container(
                            height: 63.h,
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Image.asset(
                                      'lib/icons/notification.png',
                                      width: 32.w,
                                      height: 32.h,
                                      color: Colors.white,
                                      fit: BoxFit.contain,
                                    ),
                                    Positioned(
                                      right: 5,
                                      top: 2,
                                      child: Container(
                                        width: 8.w,
                                        height: 8.h,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Recomendation(),
                SizedBox(
                  height: 21.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ViewJobList()));
                  },
                  mouseCursor: SystemMouseCursors.click,
                  child: RecentJobList(),
                ),
              ],
            ),
            Positioned(
              top: 143.h,
              left: 20.w,
              right: 20.w,
              child: CustomSearchInput(
                hintText: 'Search job, company, etc...',
                backgroundColor: Colors.white,
                elevation: 4.0,
                shadowOpacity: 0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
