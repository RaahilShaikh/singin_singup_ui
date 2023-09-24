import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_signup_ui/AppTheme.dart';

Widget customTextField({
  String? hintText,
  bool? obscureText,
  Widget? suffixIcon,
}){
  return SizedBox(
    height: 50.h,
    child: TextFormField(
      // controller: TextEditingController(),
      style: TextStyle(
          fontFamily: "Regular",
          fontSize: 15.sp,
          color: Colors.black
      ),
      validator: (value){
        // if(value?.isEmpty ?? true){
        //   return "Please enter Email";
        // }
      },
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
            fontFamily: "Regular",
            fontSize: 13.sp,
            color: MyAppColor.primaryBorderGreyColor
        ),
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: BorderSide(color: MyAppColor.primaryBorderGreyColor)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: BorderSide(color: MyAppColor.primaryBorderGreyColor)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(color: Colors.red)
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(color: Colors.pink)
        ),
      ),
    ),
  );
}

Widget customButton({
  String? name,
  Function()? onTap
}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: MyAppColor.primaryBlueColor,
          borderRadius: BorderRadius.circular(5.sp),
          boxShadow: [
            BoxShadow(
                color: MyAppColor.primaryGreyColor.withOpacity(0.6),
                offset: const Offset(0,5),
                spreadRadius: 1.sp,
                blurRadius: 10.sp
            )
          ]
      ),
      alignment: Alignment.center,
      child: Text(name ?? '',
        style: TextStyle(
          fontSize: 20.sp,
          fontFamily: "SemiBold",
          color: Colors.white,
        ),),
    ),
  );
}