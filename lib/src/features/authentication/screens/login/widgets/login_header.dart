import 'package:ecommerce_t/src/utils/constants/image_strings.dart';
import 'package:ecommerce_t/src/utils/constants/text_strings.dart';
import 'package:ecommerce_t/src/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: THelperFunctions.screenHeight() * 0.2,
          width: THelperFunctions.screenWidth() * 0.5,
          image: AssetImage(
            dark ? TImages.darkAppLogo : TImages.lightAppLogo,
          ),
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 15,
          child: Text(
            TTexts.loginSubTitle,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}