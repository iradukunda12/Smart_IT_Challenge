import 'package:flutter/material.dart';
import 'package:smart_it_challenge_ui/components/recent_job_list.dart';
import 'package:smart_it_challenge_ui/components/recomendation.dart';
import 'package:smart_it_challenge_ui/components/search_input.dart';

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
                  width: 395,
                  height: 170,
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
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Leslie Alexander",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Expanded(
                          child: Container(
                            height: 63,
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
                                      width: 32,
                                      height: 32,
                                      color: Colors.white,
                                      fit: BoxFit.contain,
                                    ),
                                    Positioned(
                                      right: 5,
                                      top: 2,
                                      child: Container(
                                        width: 8,
                                        height: 8,
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
                  height: 50,
                ),
                //Recomendation
                Recomendation(),
                SizedBox(
                  height: 20,
                ),
                //recent job list
                RecentJobList(),
              ],
            ),
            Positioned(
              top: 140,
              left: 20,
              right: 20,
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
