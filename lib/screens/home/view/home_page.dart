import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../custom_widgets/custom_widgets.dart';
import '../widget/widget.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            margin: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomePageHeader(),
                20.verticalSpace,
                SizedBox(
                  height: 50.h,
                  child: OutlinedTextfield(
                    controller: searchController,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: Colors.amber.shade700,
                      size: 25.r,
                    ),
                    suffixIcon: Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.amber.shade700,
                      size: 25.r,
                    ),
                    hintText: "Start searching here",
                    cursorColor: Colors.amber.shade700,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
                20.verticalSpace,
                CustomText(
                  text: "Discover Studios nearby",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
