import 'package:ecommerce_t/src/utils/constants/sizes.dart';
import 'package:ecommerce_t/src/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.images, required this.title, required this.subTitle,
  });
  final String images ,title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          width: THelperFunctions.screenWidth()*0.8,
          height: THelperFunctions.screenHeight()*0.6,
          image: AssetImage(images),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
    
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
    
        ),                 
      ],
    );
  }
}