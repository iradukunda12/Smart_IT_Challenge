import 'package:flutter/material.dart';

class JobModel {
  final String companyName;
  final String companyLocation;
  final String jobTitle;
  final String seniority;
  final String jobType;
  final String workMode;
  final double monthlySalary;
  final String companyLogo;
  final Color cardColor;

  JobModel(
      {required this.companyName,
      required this.companyLocation,
      required this.jobTitle,
      required this.seniority,
      required this.jobType,
      required this.workMode,
      required this.monthlySalary,
      required this.companyLogo,
      required this.cardColor});
}
