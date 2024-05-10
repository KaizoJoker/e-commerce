// ignore_for_file: prefer_const_constructors, unused_import

import 'package:ecommerce_t/src/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ecommerce_t/src/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce_t/src/features/authentication/screens/onboarding/widgets/onboarding_next_botton.dart';
import 'package:ecommerce_t/src/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_t/src/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_t/src/utils/constants/colors.dart';
import 'package:ecommerce_t/src/utils/constants/image_strings.dart';
import 'package:ecommerce_t/src/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //for  backend operation
    //put make new instances of onbordingcontroller
    /// creates a new instance of OnBoardingController and registers it so that 
    /// it can be accessed anywhere in the widget tree of the application. 
    final controller = Get.put(OnBoardingController());
    return  Scaffold(
      body: Stack(
        children: [
  /// Creates a scrollable list that works page by page using widgets that are
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
              images: TImages.onboardingImage_1,
              title:TTexts.onBoardingTitle1 ,
              subTitle: TTexts.onBoardingSubTitle1
               ),
               OnBoardingPage(
              images: TImages.onboardingImage_2,
              title:TTexts.onBoardingTitle2 ,
              subTitle: TTexts.onBoardingSubTitle2
               )

            ],
          ),
          //Skip button
          OnBoardingSkip(),

          //Dot navigation SmothPageIndicator
          OnBoardingNavigation(),

          //Circular button
          OnBoardingNextButton()

          
        ],

      ),
    );
  }
}



