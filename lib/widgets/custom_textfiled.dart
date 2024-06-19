import 'package:flutter/material.dart';
import 'package:travel_app/component/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Container(
        height: 58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: ColorWidgets.textFieldBorderColor,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 30),
                  hintText: 'Search places',
                  hintStyle: TextStyle(
                    color: ColorWidgets.secendryFontColor,
                    fontFamily: 'Roboto-Medium',
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            VerticalDivider(
              color: ColorWidgets.textFieldBorderColor,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/icon_setting.png',
                  width: 21,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}