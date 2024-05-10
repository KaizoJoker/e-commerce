import 'package:ecommerce_t/src/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ecommerce_t/src/utils/constants/colors.dart';
import 'package:ecommerce_t/src/utils/constants/sizes.dart';
import 'package:ecommerce_t/src/utils/device/device_utility.dart';
import 'package:ecommerce_t/src/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController, 
        onDotClicked: controller.dotNavigationClick,
        count: 2,
      effect: ExpandingDotsEffect(activeDotColor: dark?TColors.light: TColors.dark,dotHeight: 6),));
  }
}