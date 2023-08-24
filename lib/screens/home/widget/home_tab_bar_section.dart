import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget.dart';

class HomeTabBarSection extends StatefulWidget {
  const HomeTabBarSection({super.key});

  @override
  State<HomeTabBarSection> createState() => _HomeTabBarSectionState();
}

class _HomeTabBarSectionState extends State<HomeTabBarSection>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 230.h,
      //color: Colors.green,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 30.w,
              child: TabBar(
                //overlayColor: MaterialStatePropertyAll(Colors.amber.shade700),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  border: Border.all(),
                ),
                indicatorColor: Colors.amber.shade700,
                labelColor: Colors.black,
                isScrollable: true,
                controller: tabController,
                tabs: const [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Pianos",
                  ),
                  Tab(
                    text: "Guitars",
                  ),
                  Tab(
                    text: "Violins",
                  ),
                ],
              ),
            ),
          ),
          20.verticalSpace,
          SizedBox(
            width: double.maxFinite,
            height: 150.h,
            child: TabBarView(
              controller: tabController,
              children:  [
                AllTab(),
                const PianoTab(),
                const GuitarTab(),
                const ViolinTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
