// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  final String text;
  int? maxLines;
  TextOverflow? overflow;
  TextAlign? textAlign;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  bool? isUppercase;
  CustomText({
    Key? key,
    this.isUppercase = false,
    required this.text,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
    this.color = Colors.black
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text( 
       isUppercase == true ? text.toUpperCase() : text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
