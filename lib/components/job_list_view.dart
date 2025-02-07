import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_it_challenge_ui/components/job._cards.dart';
import 'package:smart_it_challenge_ui/model/job_model.dart';

class JobListView extends StatelessWidget {
  final List<JobModel> jobs;

  const JobListView({super.key, required this.jobs});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 248.h,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: jobs.length,
          itemBuilder: (context, index) {
            return JobCard(
              job: jobs[index],
              onApplyPressed: () {
                print('Applied to ${jobs[index].jobTitle}');
              },
            );
          },
        ),
      ),
    );
  }
}
