// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class OutlinedTextfield extends StatelessWidget {
  double paddingTop;
  double paddingBottom;
  double paddingLeft;
  double paddinRight;
  TextEditingController? controller;
  Color? cursorColor;
  Color enabledBorderColor;
  Color focusedBorderColor;
  Widget? prefixIcon;
  Widget? suffixIcon;
  String? hintText;
  bool? filled;
  Color? fillColor;
  EdgeInsetsGeometry? contentPadding;

  OutlinedTextfield({
    this.cursorColor = Colors.black,
    Key? key,
    this.paddinRight = 0,
    this.paddingBottom = 0,
    this.paddingLeft = 0,
    this.paddingTop = 0,
    this.controller,
    this.enabledBorderColor = Colors.grey,
    this.focusedBorderColor = Colors.grey,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.filled = false,
    this.fillColor = Colors.white,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: paddingTop,
        bottom: paddingBottom,
        left: paddingLeft,
        right: paddinRight,
      ),
      child: TextField(
        controller: controller!,
        cursorColor: cursorColor,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          filled: filled,
          fillColor: fillColor,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
              color: enabledBorderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
              color: focusedBorderColor,
            ),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
