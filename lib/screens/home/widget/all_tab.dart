import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/dummy_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllTab extends StatelessWidget {
  AllTab({super.key});

  final pianoPhotos = DummyData().pianoPhotos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: pianoPhotos.length,
      itemBuilder: (context, index) {
        final currentPiano = pianoPhotos[index];
        return  Container(
          margin: EdgeInsets.only(right: 25.w),
            width: 130.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Image.asset(
                currentPiano.img!,
                fit: BoxFit.cover,
              ),
            ),
        
        );
      },
    );
  }
}
