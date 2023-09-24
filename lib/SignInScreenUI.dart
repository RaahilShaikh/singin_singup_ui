import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_signup_ui/AppTheme.dart';
import 'package:signin_signup_ui/FormSpecific.dart';
import 'package:signin_signup_ui/SignUpScreenUI.dart';

class SignInScreenUI extends StatefulWidget {
  const SignInScreenUI({super.key});

  @override
  State<SignInScreenUI> createState() => _SignInScreenUIState();
}

class _SignInScreenUIState extends State<SignInScreenUI> {
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              /// top section
              SizedBox(
                height: height / 3,
                width: double.infinity,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: height / 3.3,
                        width: width / 2.2,
                        color: MyAppColor.primaryGreyColor,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 80.sp,
                        width: width / 1.3,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 35.w, top: 20.h),
                        decoration: BoxDecoration(color: MyAppColor.primaryBlueColor, borderRadius: BorderRadius.only(topRight: Radius.circular(20.sp), bottomRight: Radius.circular(100.sp))),
                        child: Text(
                          "Sign in",
                          style: TextStyle(fontSize: 40.sp, color: Colors.white, fontFamily: "Bold"),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.sp, left: 30.sp),
                        child: Container(
                          height: 155.sp,
                          width: 155.sp,
                          decoration: BoxDecoration(color: MyAppColor.primaryGreyColor, borderRadius: BorderRadius.circular(10.sp)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 80.sp,
                        width: width / 1.6,
                        decoration: BoxDecoration(color: MyAppColor.primaryBlueColor, borderRadius: BorderRadius.only(topLeft: Radius.circular(20.sp), bottomLeft: Radius.circular(20.sp))),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        SizedBox(height: 40.h),

                        /// textFormField of Email
                        customTextField(hintText: "Email"),
                        SizedBox(height: 20.h),

                        /// textFormField of Password
                        customTextField(
                            hintText: "Password",
                            obscureText: !isShowPassword,
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isShowPassword = !isShowPassword;
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(10.sp),
                                  child: Image.asset(
                                    isShowPassword ? "icons/ic_passwordShow.png" : "icons/ic_passwordHide.png",
                                    color: MyAppColor.primaryBorderGreyColor,
                                  ),
                                ))),
                        SizedBox(height: 20.h),

                        /// Forget password section
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(fontSize: 13.sp, fontFamily: "Medium", fontWeight: FontWeight.w600, color: MyAppColor.primaryBlueColor),
                          ),
                        ),
                        SizedBox(height: 40.h),

                        /// Sign in button section
                        customButton(name: "Sign in"),

                        /// other login section
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 30.h),
                          child: Text(
                            "or continue with",
                            style: TextStyle(fontSize: 13.sp, fontFamily: "Medium", fontWeight: FontWeight.w600, color: MyAppColor.primaryGreyColor.withOpacity(0.5)),
                          ),
                        ),
                        SizedBox(
                          height: 50.sp,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 50.sp,
                                width: 50.sp,
                                decoration: BoxDecoration(border: Border.all(color: MyAppColor.primaryBorderGreyColor), borderRadius: BorderRadius.circular(5.sp)),
                                padding: EdgeInsets.all(15.sp),
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "icons/ic_google.png",
                                ),
                              ),
                              Container(
                                height: 50.sp,
                                width: 50.sp,
                                decoration: BoxDecoration(border: Border.all(color: MyAppColor.primaryBorderGreyColor), borderRadius: BorderRadius.circular(5.sp)),
                                padding: EdgeInsets.all(15.sp),
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "icons/ic_apple.png",
                                ),
                              ),
                              Container(
                                height: 50.sp,
                                width: 50.sp,
                                decoration: BoxDecoration(border: Border.all(color: MyAppColor.primaryBorderGreyColor), borderRadius: BorderRadius.circular(5.sp)),
                                padding: EdgeInsets.all(15.sp),
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "icons/ic_facebook.png",
                                ),
                              ),
                            ],
                          ),
                        ),

                        /// footer section
                        SizedBox(height: 30.h,),
                        Text.rich(TextSpan(children: [
                          TextSpan(text: "Don't have an account? ",style: TextStyle(fontSize: 13.sp, fontFamily: "Medium", fontWeight: FontWeight.w600, color: MyAppColor.primaryGreyColor.withOpacity(0.5)),),
                          TextSpan(text: "Sign up",style: TextStyle(fontSize: 13.sp, fontFamily: "SemiBold", fontWeight: FontWeight.w700, color: MyAppColor.primaryBlueColor),recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const SignUpScreenUI()),(route) => false,);
                            },
                          )
                        ])),
                      ],
                    ),
                ),
              ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
