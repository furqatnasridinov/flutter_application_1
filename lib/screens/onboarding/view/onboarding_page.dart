import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/home.dart';
import 'package:flutter_application_1/screens/home_bottom_navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../custom_widgets/custom_widgets.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(8.r),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          padding: EdgeInsets.all(8.r),
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: SizedBox(
                width: double.maxFinite,
                height: 400.h,
                child: Image.asset(
                  "assets/images/welcome.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            20.verticalSpace,
            CustomText(
              text: "Welcome to Studio smth",
              textAlign: TextAlign.center,
              fontSize: 30.sp,
              fontWeight: FontWeight.w600,
            ),
            16.verticalSpace,
            CustomText(
              text:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              textAlign: TextAlign.center,
              fontSize: 14.sp,
              color: Colors.grey,
            ),
            25.verticalSpace,
            CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeBottomNavigation(),
                  ),
                );
              },
              text: "Login",
              color: Colors.amber.shade700,
            ),
            20.verticalSpace,
            CustomButton(
              onTap: () {},
              text: "Sign Up",
              color: Colors.white,
              textcolor: Colors.black,
            )
          ]),
        ),
      ),
    );
  }
}
