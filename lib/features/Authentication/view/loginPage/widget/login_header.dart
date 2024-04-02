import 'package:flutter/material.dart';

import '../../../../../Utils/constant/image_string.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../Utils/constant/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(
                dark ? StoreImages.darkAppLogo : StoreImages.lightAppLogo)),
        Text(
          StoreTexts.loginPageTitle,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: StoreSizes.s),
        Text(
          StoreTexts.loginPageSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
