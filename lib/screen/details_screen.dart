import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/component/widgets/gap.dart';

class DetailsScreen extends StatelessWidget {
  final int index;
  const DetailsScreen(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      'assets/images/bg2.png',
      'assets/images/bg1.png',
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.0, vertical: 28),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 410,
                    width: 374,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        imageList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 6,
                    left: 6,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 7,
                            sigmaY: 7,
                          ),
                          child: Container(
                            width: 44,
                            height: 44,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/arrow_left.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 6,
                    right: 6,
                    child: IconButton(
                      onPressed: () {},
                      icon: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 7,
                            sigmaY: 7,
                          ),
                          child: Container(
                            width: 44,
                            height: 44,
                            padding: const EdgeInsets.all(11),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/Archive.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 7,
                          sigmaY: 7,
                        ),
                        child: Container(
                          height: 104,
                          width: 324,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white.withOpacity(0.1),
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                  right: 14.0,
                                  left: 14.0,
                                  top: 11,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Andes Mountain',
                                      style: TextStyle(
                                        fontFamily: 'inter-SemiBold',
                                        color: Colors.white,
                                        fontSize: 24,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      'Price',
                                      style: TextStyle(
                                        color: Color(0xffCAC8C8),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 14.0,
                                  left: 14.0,
                                  top: 12,
                                ),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Image.asset(
                                        'assets/images/loc.png',
                                        width: 16,
                                      ),
                                    ),
                                    GapWidgets.w8,
                                    const Text(
                                      'Tokyo, Japon',
                                      style: TextStyle(
                                        color: Color(0xffCAC8C8),
                                        fontSize: 18,
                                      ),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      '\$',
                                      style: TextStyle(
                                        color: Color(0xff434343),
                                        fontSize: 20,
                                      ),
                                    ),
                                    const Text(
                                      '4.9',
                                      style: TextStyle(
                                        color: Color(0xffCAC8C8),
                                        fontSize: 26,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                children: [
                  const Text(
                    'Overview',
                    style: TextStyle(
                      color: Color(0xff1B1B1B),
                      fontSize: 22,
                    ),
                  ),
                  GapWidgets.w24,
                  Text(
                    'Details',
                    style: TextStyle(
                      color: const Color(0xff1B1B1B).withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 28.0,
                right: 28.0,
                top: 22,
                bottom: 24,
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: const Color(0xffEDEDED),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Image.asset(
                      'assets/images/icon_clock.png',
                    ),
                  ),
                  GapWidgets.w4,
                  const Text(
                    '8 hours',
                    style: TextStyle(
                      color: Color(0xff7E7E7E),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: const Color(0xffEDEDED),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Image.asset(
                      'assets/images/icon_cloud.png',
                    ),
                  ),
                  GapWidgets.w4,
                  const Text(
                    '16 C',
                    style: TextStyle(
                      color: Color(0xff7E7E7E),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: const Color(0xffEDEDED),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Image.asset(
                      'assets/images/star2.png',
                    ),
                  ),
                  GapWidgets.w4,
                  const Text(
                    '4.5',
                    style: TextStyle(
                      color: Color(0xff7E7E7E),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: GradientText(
                'This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys. The Andes are also home to.',
                gradient: LinearGradient(
                  colors: [
                    const Color(0xffA5A5A5),
                    const Color(0xffA5A5A5).withOpacity(0.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: '',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 66,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff1B1B1B),
                    foregroundColor: Colors.white,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Book now',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      GapWidgets.w16,
                      Image.asset(
                        'assets/images/send_icon.png',
                        width: 23,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style?.copyWith(color: Colors.white) ??
            TextStyle(
              color: Colors.white,
            ),
      ),
    );
  }
}
