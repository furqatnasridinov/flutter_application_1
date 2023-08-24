import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_widgets/custom_text.dart';
import 'package:flutter_application_1/models/dummy_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeMarketsList extends StatelessWidget {
  HomeMarketsList({super.key});
  final markets = DummyData().markets;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
        itemCount: markets.length,
        itemBuilder: (context, index) {
          final currentMarket = markets[index];
          return ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              width: 70.w,
              height: 70.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                  image: AssetImage(currentMarket.img!),
                ),
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.amber.shade700,
              size: 20.r,
            ),
            title: CustomText(
              text: currentMarket.name!,
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 18.r,
                ),
                CustomText(
                  text: currentMarket.rating.toString(),
                ),
                5.horizontalSpace,
                CustomText(
                  text: currentMarket.reviews.toString() + "Reviews",
                ),
                5.horizontalSpace,
                CustomText(
                  text: currentMarket.pricePerNight.toString() + "\/night",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
