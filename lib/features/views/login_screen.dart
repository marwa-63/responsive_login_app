import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen/core/theme/app_theme.dart';
import 'package:login_screen/features/widgets/login_form_widget.dart';
import '../../core/constants/image_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Background SVG
            SizedBox(
              width: double.infinity,
              height: 200.h,
              child: FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.topLeft,
                child: SvgPicture.asset(
                  MyAppImages.backGround,
                ),
              ),
            ),
            // Main content
            Column(
              children: [
                SizedBox(height: 12.h),
                CircleAvatar(
                  radius: 70.r,
                  backgroundImage: AssetImage(MyAppImages.logo),
                ),
                Text("Welcome Back!", style: MyTextStyles.boldTitleText()),
                SizedBox(height: 10.h),
                LoginFormWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


 