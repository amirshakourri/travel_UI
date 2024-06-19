import 'package:flutter/material.dart';
import 'package:travel_app/component/colors.dart';
import 'package:travel_app/component/widgets/gap.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 26,
        vertical: 34,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hi, Amir',
                    style: TextStyle(
                      fontFamily: 'Montserrat-SemiBold',
                      color: ColorWidgets.fontColor,
                      fontSize: 30,
                    ),
                  ),
                  GapWidgets.w4,
                  Image.asset(
                    'assets/images/hand.png',
                    width: 30,
                  ),
                ],
              ),
              Text(
                'Explore the world',
                style: TextStyle(
                  fontFamily: 'inter-medium',
                  fontSize: 20,
                  color: ColorWidgets.secendryFontColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: ColorWidgets.secendryFontColor,
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/images/face.png'),
            ),
          )
        ],
      ),
    );
  }
}
