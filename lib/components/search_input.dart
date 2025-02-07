import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchInput extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final bool? enabled;
  final double elevation;
  final double shadowOpacity;

  const CustomSearchInput({
    super.key,
    this.controller,
    this.hintText = 'Search...',
    this.onChanged,
    this.onSubmitted,
    this.backgroundColor,
    this.iconColor,
    this.textColor,
    this.padding,
    this.enabled,
    this.elevation = 4.0,
    this.shadowOpacity = 0.2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(shadowOpacity),
            spreadRadius: 1,
            blurRadius: elevation,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        enabled: enabled ?? true,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        style: TextStyle(
          color: textColor ?? Colors.black,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: (textColor ?? Colors.black).withOpacity(0.5),
          ),
          prefixIcon: Icon(
            Icons.search_outlined,
            color: iconColor ?? Colors.grey[600],
            size: 30,
          ),
          filled: true,
          fillColor: backgroundColor ?? Colors.white,
          contentPadding: padding ??
              EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: iconColor ?? Colors.blue,
              width: 1.5.w,
            ),
          ),
        ),
      ),
    );
  }
}
