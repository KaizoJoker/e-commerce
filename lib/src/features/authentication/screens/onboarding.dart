// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widget/src/utils/constants/image_strings.dart';
import 'package:widget/src/utils/constants/sizes.dart';
import 'package:widget/src/utils/constants/text_strings.dart';
import 'package:widget/src/utils/helper/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
  /// Creates a scrollable list that works page by page using widgets that are
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: THelperFunctions.screenWidth()*0.8,
                    height: THelperFunctions.screenWidth()*0.06,
                    image: AssetImage('assets/images/on_boarding_images/onboarding_1.jpeg')),
                  Text(
                    TTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,

                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Text(
                    TTexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,

                  ),                 
                ],
              )

            ],
          )
        ],
      ),
    );
  }
}