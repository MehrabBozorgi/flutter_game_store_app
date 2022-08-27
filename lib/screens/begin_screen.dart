import 'package:flutter/material.dart';
import 'package:flutter_game_shop_ui/screens/main_screen.dart';
import 'package:flutter_game_shop_ui/tools/border.dart';
import 'package:flutter_game_shop_ui/tools/colors.dart';

import '../tools/styles.dart';

class BeginScreen extends StatelessWidget {
  const BeginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: redColor1,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'pic1.png',
                width: width,
              ),
              const Text(
                'Bringing gaming into\nyour daily routine',
                style: textStyle1,
                textAlign: TextAlign.center,
              ),
              const Text(
                'The best games, personalized\nto your gaming preferences',
                textAlign: TextAlign.center,
                style: textStyle11,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.04,
                      vertical: height * 0.007,
                    ),
                    margin: EdgeInsets.all(width * 0.01),
                    decoration: BoxDecoration(
                      color: redColor1,
                      borderRadius: getBorderRadiusWidget(context, 1),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(width * 0.015),
                    margin: EdgeInsets.all(width * 0.01),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: getBorderRadiusWidget(context, 1),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(width * 0.015),
                    margin: EdgeInsets.all(width * 0.01),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: getBorderRadiusWidget(context, 1),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.07,
                  vertical: height * 0.04,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: getShapeWidget(context, 1),
                    padding: EdgeInsets.symmetric(vertical: height * 0.01),
                    primary: redColor1,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Get Started',
                          style: textStyle8,
                        ),
                        Icon(
                          Icons.arrow_circle_right_rounded,
                          color: Colors.white,
                          size: width * 0.1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
