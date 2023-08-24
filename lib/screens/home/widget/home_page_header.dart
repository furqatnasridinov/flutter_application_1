import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_widgets/custom_widgets.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Howday Alex",
                fontSize: 21.sp,
                fontWeight: FontWeight.w600,
              ),
              6.verticalSpace,
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 20.r,
                    color: Colors.amber.shade700,
                  ),
                  7.horizontalSpace,
                  Text(
                    "Dubai, UAE",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.amber.shade700,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            width: 60.w,
            height: 60.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/memoji.png",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
