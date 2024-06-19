import 'package:flutter/material.dart';
import 'package:travel_app/component/colors.dart';

class TabWidgets extends StatelessWidget {
  const TabWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0),
      child: TabBar(
        unselectedLabelColor: Colors.grey,
        isScrollable: false,
        indicator: BoxDecoration(
          color: ColorWidgets.fontColor,
          borderRadius: BorderRadius.circular(20),
        ),
        indicatorPadding: const EdgeInsets.symmetric(horizontal: -22),
        dividerColor: Colors.transparent,
        labelColor: Colors.white,
        overlayColor:
            const WidgetStatePropertyAll(Colors.transparent),
        tabs: const [
          Tab(
            text: 'Most Viewed',
          ),
          Tab(
            text: 'Nearby',
          ),
          Tab(
            text: 'Latest',
          ),
        ],
      ),
    );
  }
}