import 'package:flutter/material.dart';
import 'package:travel_app/component/colors.dart';
import 'package:travel_app/widgets/custom_app_bar.dart';
import 'package:travel_app/widgets/custom_textfiled.dart';
import 'package:travel_app/widgets/tab_bar.dart';
import 'package:travel_app/widgets/tabbar_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          height: 54,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildNavItem(0, 'assets/images/home.png', 18),
              _buildNavItem(1, 'assets/images/clock.png', 18),
              _buildNavItem(2, 'assets/images/heart.png', 18),
              _buildNavItem(3, 'assets/images/user.png', 15),
            ],
          ),
        ),
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
              const TabBarViewWidget(),
            ],
          ),
        ),
      ),
    );
  }

   _buildNavItem(int index, String assetPath, double size) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            assetPath,
            width: size,
            color: isSelected ? Colors.black : Colors.grey,
          ),
          const Spacer(),
          if (isSelected)
            const CircleAvatar(
              radius: 3,
              backgroundColor: Colors.red,
            ),
        ],
      ),
    );
  }
}
