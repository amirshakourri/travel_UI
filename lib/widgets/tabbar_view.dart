import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/component/widgets/gap.dart';
import 'package:travel_app/screen/details_screen.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      'assets/images/bg2.png',
      'assets/images/bg1.png',
    ];

    return Expanded(
      child: TabBarView(
        children: [
          ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22.0,
                vertical: 45,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          color: Colors.grey,
                        )
                      ],
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(index),
                            )),
                        child: Image.asset(imageList[index]),
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
                              'assets/images/heart_icon.png',
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
                          height: 75,
                          width: 224,
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
                                  children: [
                                    Text(
                                      'Mount Fuji, ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      'Tokyo',
                                      style: TextStyle(
                                        color: Color(0xffCAC8C8),
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 14.0,
                                  left: 14.0,
                                  top: 8,
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
                                        fontSize: 14,
                                      ),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Image.asset(
                                        'assets/images/star.png',
                                        width: 16,
                                      ),
                                    ),
                                    GapWidgets.w8,
                                    const Text(
                                      '4.9',
                                      style: TextStyle(
                                        color: Color(0xffCAC8C8),
                                        fontSize: 14,
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
                  )
                ],
              ),
            ),
          ),
          ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22.0,
                vertical: 45,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          color: Colors.grey,
                        )
                      ],
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(imageList[index]
                          //height: 405,
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
                              'assets/images/heart_icon.png',
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
                          height: 75,
                          width: 224,
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
                                  children: [
                                    Text(
                                      'Mount Fuji, ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      'Tokyo',
                                      style: TextStyle(
                                        color: Color(0xffCAC8C8),
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 14.0,
                                  left: 14.0,
                                  top: 8,
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
                                        fontSize: 14,
                                      ),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Image.asset(
                                        'assets/images/star.png',
                                        width: 16,
                                      ),
                                    ),
                                    GapWidgets.w8,
                                    const Text(
                                      '4.9',
                                      style: TextStyle(
                                        color: Color(0xffCAC8C8),
                                        fontSize: 14,
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
                  )
                ],
              ),
            ),
          ),
          ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22.0,
                vertical: 45,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          color: Colors.grey,
                        )
                      ],
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(imageList[index]
                          //height: 405,
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
                              'assets/images/heart_icon.png',
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
                          height: 75,
                          width: 224,
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
                                  children: [
                                    Text(
                                      'Mount Fuji, ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      'Tokyo',
                                      style: TextStyle(
                                        color: Color(0xffCAC8C8),
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 14.0,
                                  left: 14.0,
                                  top: 8,
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
                                        fontSize: 14,
                                      ),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Image.asset(
                                        'assets/images/star.png',
                                        width: 16,
                                      ),
                                    ),
                                    GapWidgets.w8,
                                    const Text(
                                      '4.9',
                                      style: TextStyle(
                                        color: Color(0xffCAC8C8),
                                        fontSize: 14,
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
