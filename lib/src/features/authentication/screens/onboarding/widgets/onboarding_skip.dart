import 'package:ecommerce_t/src/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ecommerce_t/src/utils/constants/sizes.dart';
import 'package:ecommerce_t/src/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: TDeviceUtils.getAppBarHeight(),right: TSizes.defaultSpace ,child: 
    TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text("Skip")),);
  }
}