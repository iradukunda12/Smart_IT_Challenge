import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_it_challenge_ui/components/job_list_view.dart';
import 'package:smart_it_challenge_ui/model/job_model.dart';

class Recomendation extends StatefulWidget {
  const Recomendation({super.key});

  @override
  State<Recomendation> createState() => _RecomendationState();
}

class _RecomendationState extends State<Recomendation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 150.w),
            child: Text(
              "Recomendation",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          JobListView(
            jobs: [
              JobModel(
                companyName: 'Pinterest, Inc.',
                companyLocation: 'California, USA',
                jobTitle: 'Motion Designer',
                seniority: 'Senior',
                jobType: 'Fulltime',
                workMode: 'Remote',
                monthlySalary: 7,
                cardColor: const Color.fromARGB(255, 224, 229, 233),
                companyLogo: "lib/icons/pinterest.png",
              ),
              JobModel(
                companyName: 'Facebook',
                companyLocation: 'California, USA',
                jobTitle: 'UI Designer',
                seniority: 'Senior',
                jobType: 'Fulltime',
                workMode: 'Remote',
                monthlySalary: 7,
                cardColor: Colors.white,
                companyLogo: "lib/icons/facebook.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
