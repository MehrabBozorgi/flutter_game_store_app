import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_game_shop_ui/screens/second_screen.dart';
import 'package:flutter_game_shop_ui/tools/border.dart';
import 'package:flutter_game_shop_ui/tools/colors.dart';

import '../tools/styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: redColor1,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  backGroundColor1,
                  backGroundColor2,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.03,
                      vertical: height * 0.01,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(width * 0.02),
                          decoration: BoxDecoration(
                            color: redColor1,
                            borderRadius: getBorderRadiusWidget(context, 1),
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.grey.shade200,
                            size: width * 0.07,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.005,
                            horizontal: width * 0.02,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: getBorderRadiusWidget(context, 1),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(width * 0.01),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      getBorderRadiusWidget(context, 1),
                                ),
                                child: const Icon(
                                  Icons.thumb_up_rounded,
                                  color: Colors.orange,
                                ),
                              ),
                              SizedBox(width: width * 0.02),
                              const Text(
                                '3,342',
                                style: textStyle10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Center(
                    child: Container(
                      width: width * 0.9,
                      height: height * 0.06,
                      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: getBorderRadiusWidget(context, 0.03),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: width * 0.08,
                              ),
                              SizedBox(width: width * 0.02),
                              const Text(
                                'Search games',
                                style: textStyle12,
                              ),
                            ],
                          ),
                          Icon(
                            Icons.menu_outlined,
                            color: Colors.grey,
                            size: width * 0.07,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Padding(
                    padding: EdgeInsets.all(width * 0.03),
                    child: const Text(
                      'Categories',
                      style: textStyle2,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.006,
                            horizontal: width * 0.02,
                          ),
                          decoration: BoxDecoration(
                            color: redColor2,
                            borderRadius: getBorderRadiusWidget(context, 1),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.directions_walk_rounded,
                                color: redColor1,
                              ),
                              SizedBox(width: width * 0.02),
                              const Text(
                                'Action',
                                style: textStyle13,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.006,
                            horizontal: width * 0.02,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: getBorderRadiusWidget(context, 1),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.car_crash_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(width: width * 0.02),
                              const Text(
                                'Racing',
                                style: textStyle6,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.006,
                            horizontal: width * 0.02,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: getBorderRadiusWidget(context, 1),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.castle,
                                color: Colors.black,
                              ),
                              SizedBox(width: width * 0.02),
                              const Text(
                                'Strategy',
                                style: textStyle6,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.006,
                            horizontal: width * 0.02,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: getBorderRadiusWidget(context, 1),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.child_care,
                                color: Colors.black,
                              ),
                              SizedBox(width: width * 0.02),
                              const Text(
                                'Kids',
                                style: textStyle6,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.03,
                      vertical: height * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Trending',
                          style: textStyle2,
                        ),
                        Text(
                          'See all',
                          style: textStyle11,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GameOverViewWidget(
                            width: width,
                            height: height,
                            imageName: 'pic2.jpg',
                            name: 'Call of Duty: Going War Mobile',
                            star: '4.7',
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => SecondScreen()),
                              );
                            },
                            child: Hero(
                              tag: 'pic',
                              child: GameOverViewWidget(
                                width: width,
                                height: height,
                                imageName: 'pic3.jpg',
                                name: 'Spider man: Spider man Remaster',
                                star: '4.8',
                              ),
                            ),
                          ),
                          GameOverViewWidget(
                            width: width,
                            height: height,
                            imageName: 'pic6.jpg',
                            name: 'Battle Filed: World War 2',
                            star: '4.2',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.03,
                      vertical: height * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'New Games',
                          style: textStyle2,
                        ),
                        Text(
                          'See all',
                          style: textStyle11,
                        ),
                      ],
                    ),
                  ),
                  NewGamesWidget(
                    width: width,
                    height: height,
                    name: 'God of war: Ps5 edition',
                    imageName: 'pic5.jpg',
                  ),
                  SizedBox(height: height * 0.02),
                  NewGamesWidget(
                    width: width,
                    height: height,
                    name: 'Battle filed: World War 2',
                    imageName: 'pic6.jpg',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NewGamesWidget extends StatelessWidget {
  const NewGamesWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.imageName,
    required this.name,
  }) : super(key: key);

  final double width;
  final double height;
  final String imageName;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width * 0.9,
        height: height * 0.16,
        padding: EdgeInsets.only(
          left: width * 0.02,
          top: height * 0.01,
          bottom: height * 0.01,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: getBorderRadiusWidget(context, 0.05),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: getBorderRadiusWidget(context, 0.05),
                child: Image.asset(
                  imageName,
                  width: width * 0.4,
                  height: height,
                  fit: BoxFit.cover,
                  alignment: Alignment.topRight,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: textStyle4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Text(
                      'Action',
                      style: textStyle5,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width * 0.15,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.015,
                            vertical: height * 0.006,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: getBorderRadiusWidget(context, 1),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: width * 0.05,
                              ),
                              const Text(
                                '4.7',
                                style: textStyle14,
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: getShapeWidget(context, 1),
                            primary: Colors.white,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Install',
                            style: textStyle13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GameOverViewWidget extends StatelessWidget {
  const GameOverViewWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.imageName,
    required this.name,
    required this.star,
  }) : super(key: key);

  final double width;
  final double height;

  final String imageName;
  final String name;
  final String star;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.02),
      alignment: Alignment.bottomCenter,
      width: width * 0.45,
      height: height * 0.35,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageName),
          fit: BoxFit.cover,
        ),
        borderRadius: getBorderRadiusWidget(context, 0.07),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(width * 0.07),
          bottomRight: Radius.circular(width * 0.07),
          topRight: Radius.circular(width * 0.01),
          topLeft: Radius.circular(width * 0.01),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
          child: Container(
            width: width,
            height: height * 0.13,
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.03,
              vertical: height * 0.01,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  name,
                  style: textStyle9,
                  overflow: TextOverflow.ellipsis,
                ),
                const Text(
                  'Action',
                  style: textStyle10,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: getBorderRadiusWidget(context, 1),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Text(
                            star,
                            style: textStyle10,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: getShapeWidget(context, 1),
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: height * 0.008,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Install',
                        style: textStyle13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
