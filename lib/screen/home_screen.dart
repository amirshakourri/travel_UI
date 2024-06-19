import 'package:flutter/material.dart';
import 'package:travel_app/component/colors.dart';
import 'package:travel_app/widgets/custom_app_bar.dart';
import 'package:travel_app/widgets/custom_textfiled.dart';
import 'package:travel_app/widgets/tab_bar.dart';
import 'package:travel_app/widgets/tabbar_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              //! AppBar
              const CustomAppBar(),
              //! TextField
              const CustomTextField(),

              //! all Popular place
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 35),
                child: Row(
                  children: [
                    Text(
                      'Popular places',
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorWidgets.fontColor,
                          fontFamily: 'Poppins-SemiBold'),
                    ),
                    const Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorWidgets.secendryFontColor,
                        fontFamily: 'Roboto-Bold',
                      ),
                    ),
                  ],
                ),
              ),
              //! TabBar
              const TabWidgets(),
              //! TabBar View
              const TabBarViewWidget()
            ],
          ),
        ),
      ),
    );
  }
}
