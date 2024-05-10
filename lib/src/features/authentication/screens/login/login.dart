
import 'package:ecommerce_t/src/common/styles/spacing_style.dart';
import 'package:ecommerce_t/src/common/widget/login_signup/login_footer.dart';
import 'package:ecommerce_t/src/features/authentication/screens/login/widgets/login_divider.dart';
import 'package:ecommerce_t/src/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_t/src/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_t/src/utils/constants/sizes.dart';
import 'package:ecommerce_t/src/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
          
              //logo,title, subtitle
              TLoginHeader(),
              SizedBox(height: 2), // Add some spacing
          
              //form
              TLoginForm(),
          
              //devider
              TFormDivider(dividerText: TTexts.orSignInWith),
              
              SizedBox(height: TSizes.spaceBtwSection,),
          
              //footer
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

