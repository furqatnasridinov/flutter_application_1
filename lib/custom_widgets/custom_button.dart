import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  double? width;
  double? height;
  Color? color;
  Color? textcolor;
  CustomButton({
    Key? key,
    required this.onTap,
    this.width = double.maxFinite,
    this.height = 60,
    this.textcolor = Colors.white,
    this.color = Colors.orange,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: width,
        height: height!.h,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(color!),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
          ),
          onPressed: onTap,
          child: Center(
              child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: textcolor,
            ),
          )),
        ),
      ),
    );
  }
}
