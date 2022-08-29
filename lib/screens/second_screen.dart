import 'package:flutter/material.dart';
import 'package:flutter_game_shop_ui/screens/first_screen.dart';
import 'package:flutter_game_shop_ui/screens/image_screen.dart';
import 'package:flutter_game_shop_ui/tools/border.dart';
import 'package:flutter_game_shop_ui/tools/colors.dart';

import '../tools/styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    String desc =
        'Marvel\'s Spider-Man is a 2018 action-adventure game developed by Insomniac Games and published by Sony Interactive Entertainment';
    return Container(
      color: redColor1,
      child: SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: width,
            height: height,
            child: Stack(
              children: [
                Hero(
                  tag: 'pic',
                  child: Image.asset(
                    'pic4.jpg',
                    width: width,
                    height: height * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const FirstScreen()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(width * 0.02),
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: getBorderRadiusWidget(context, 1),
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(width * 0.02),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: getBorderRadiusWidget(context, 1),
                        ),
                        child: const Icon(
                          Icons.more_vert_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.55,
                  child: Center(
                    child: Icon(
                      Icons.play_circle,
                      color: Colors.white,
                      size: width * 0.12,
                    ),
                  ),
                ),
                Positioned(
                  bottom: height * 0.08,
                  child: Container(
                    width: width * 1,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Spider man - Ps5 edition',
                              style: textStyle8,
                            ),
                            Text(
                              'Action',
                              style: textStyle9,
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.03,
                            vertical: height * 0.008,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: getBorderRadiusWidget(context, 1),
                            color: Colors.black38,
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Text(
                                '4.8',
                                style: textStyle14,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: width,
                    height: height * 0.55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(width * 0.08),
                        topLeft: Radius.circular(width * 0.08),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.03,
                        vertical: height * 0.02,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.symmetric(vertical: height * 0.004),
                            width: width * 0.2,
                            height: height * 0.01,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              borderRadius: getBorderRadiusWidget(context, 1),
                            ),
                          ),
                          Container(
                            width: width * 0.85,
                            height: height * 0.065,
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.03),
                            decoration: BoxDecoration(
                              borderRadius: getBorderRadiusWidget(context, 1),
                              color: Colors.grey.shade200,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.download,
                                      color: redColor1,
                                    ),
                                    Text(
                                      '100M',
                                      style: textStyle5,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star_rate_rounded,
                                      color: redColor1,
                                    ),
                                    Text(
                                      'Rated',
                                      style: textStyle7,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.phone_android_outlined,
                                      color: redColor1,
                                    ),
                                    Text(
                                      '1.6GB',
                                      style: textStyle5,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width,
                            child: const Text(
                              'About game',
                              style: textStyle3,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.02,
                              vertical: height * 0.02,
                            ),
                            child: Text(
                              desc,
                              style: textStyle11,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Game Pictures',
                                style: textStyle3,
                              ),
                              Text(
                                'See all',
                                style: textStyle11,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    getBorderRadiusWidget(context, 0.05),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => const ImageScreen(
                                          image: 'pic7.jpg',
                                          hero: 'detail7',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: 'detail7',
                                    child: Image.asset(
                                      'pic7.jpg',
                                      width: width * 0.25,
                                      height: height * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius:
                                    getBorderRadiusWidget(context, 0.05),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => const ImageScreen(
                                          image: 'pic8.jpg',
                                          hero: 'detail8',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: 'detail8',
                                    child: Image.asset(
                                      'pic8.jpg',
                                      width: width * 0.25,
                                      height: height * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius:
                                    getBorderRadiusWidget(context, 0.05),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => const ImageScreen(
                                          image: 'pic9.jpg',
                                          hero: 'detail9',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: 'detail9',
                                    child: Image.asset(
                                      'pic9.jpg',
                                      width: width * 0.25,
                                      height: height * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.02),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: redColor1,
                              shape: getShapeWidget(context, 1),
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.2,
                                vertical: height * 0.015,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Install Game',
                              style: textStyle8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
