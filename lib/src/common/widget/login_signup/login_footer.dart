import 'package:ecommerce_t/src/utils/constants/colors.dart';
import 'package:ecommerce_t/src/utils/constants/image_strings.dart';
import 'package:ecommerce_t/src/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.dark),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(TImages.googleImages),
                width: TSizes.iconMd,
                height: TSizes.iconMd,
              )),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.dark),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(TImages.facebookImages),
                width: TSizes.iconMd,
                height: TSizes.iconMd,
              )),
        )
      ],
    );
  }
}





