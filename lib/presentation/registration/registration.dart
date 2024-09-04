import 'package:care_tutors_assignment/presentation/widgets/action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/app_routes_const.dart';
import '../../core/utils/text_font_style.dart';
import '../widgets/custom_form_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  final _nameFN = FocusNode();
  final _emailFN = FocusNode();
  final _passFN = FocusNode();

  @override
  void dispose() {
    _emailCtrl.dispose();
    _nameCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        children: [
          SizedBox(height: 150.h),
          Text(
            "Welcome",
            style: TextFontStyle.headline24PoppinsBlack,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text("Please Sign Up to start your journey",
              textAlign: TextAlign.center,
              style: TextFontStyle.headline14PoppinsBlack),
          SizedBox(height: 50.h),
          CustomFormField(
            title: "Name",
            hintText: "Enter your full name",
            keyboard: TextInputType.name,
            focusNode: _nameFN,
            controller: _nameCtrl,
          ),
          SizedBox(height: 20.h),
          CustomFormField(
            title: "Email",
            hintText: "Enter your email address",
            keyboard: TextInputType.emailAddress,
            focusNode: _emailFN,
            controller: _emailCtrl,
          ),
          SizedBox(height: 20.h),
          CustomFormField(
            title: "Password",
            hintText: "Enter your password",
            keyboard: TextInputType.text,
            focusNode: _passFN,
            controller: _passCtrl,
            textInputAction: TextInputAction.done,
          ),
          SizedBox(height: 60.h),
          const ActionButton(title: "Sign Up"),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextFontStyle.headline14PoppinsRegular,
              ),
              SizedBox(width: 6.w),
              InkWell(
                onTap: () {
                  context.pushReplacementNamed(AppRoutesConst.login);
                },
                child: Text(
                  "Sign In",
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
