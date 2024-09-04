import 'package:care_tutors_assignment/core/utils/text_font_style.dart';
import 'package:care_tutors_assignment/presentation/widgets/action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/app_routes_const.dart';
import '../widgets/custom_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controller
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  // Focus node
  final _emailFN = FocusNode();
  final _passFN = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        children: [
          SizedBox(height: 150.h),
          Center(
            child: Text("Good to see you again",
                style: TextFontStyle.headline24PoppinsBlack),
          ),
          SizedBox(height: 50.h),
          CustomFormField(
            keyboard: TextInputType.emailAddress,
            controller: _emailController,
            focusNode: _emailFN,
            title: "Email",
            hintText: "Enter your email address",
          ),
          SizedBox(height: 20.h),
          CustomFormField(
            keyboard: TextInputType.text,
            controller: _passController,
            focusNode: _passFN,
            hintText: "Enter your password",
            title: "Password",
            textInputAction: TextInputAction.done,
          ),
          SizedBox(height: 80.h),
          const ActionButton(
            title: "Sign In",
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextFontStyle.headline14PoppinsRegular,
              ),
              SizedBox(width: 6.w),
              InkWell(
                onTap: () {
                  context.pushNamed(AppRoutesConst.register);
                },
                child: Text(
                  "Sign Up",
                  style: TextFontStyle.headline14PoppinsBlack,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
