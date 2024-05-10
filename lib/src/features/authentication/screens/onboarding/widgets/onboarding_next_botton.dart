// ignore_for_file: sort_child_properties_last

import 'package:ecommerce_t/src/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ecommerce_t/src/utils/constants/colors.dart';
import 'package:ecommerce_t/src/utils/constants/sizes.dart';
import 'package:ecommerce_t/src/utils/device/device_utility.dart';
import 'package:ecommerce_t/src/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
      onPressed: () => OnBoardingController.instance.nextPage(), 
      child: const Icon(Iconsax.arrow_right_3),
      style: ElevatedButton.styleFrom(shape: const CircleBorder(),
      backgroundColor: dark? TColors.primary: Colors.black),
      ));
  }
}