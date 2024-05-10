import 'package:ecommerce_t/src/utils/constants/text_strings.dart';
import 'package:ecommerce_t/src/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
          color: dark ? Colors.grey : Colors.black,
          thickness: 0.5,
          indent: 60,
          endIndent: 0.5,
        )),
        Text(
          TTexts.orSignInWith.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
          color: dark ? Colors.grey : Colors.black,
          thickness: 0.5,
          indent: 0.5,
          endIndent: 60,
        )),
      ],
    );
  }
}