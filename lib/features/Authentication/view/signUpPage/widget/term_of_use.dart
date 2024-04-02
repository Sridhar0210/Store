import 'package:flutter/material.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/text_strings.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // remember me
        Row(
          children: [
            SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(value: true, onChanged: (value) {})),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: '${StoreTexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${StoreTexts.privacyPolicy} ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: StoreColors.buttonLightColor)),
                TextSpan(
                    text: "and ", style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: ' ${StoreTexts.termOfUse}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: StoreColors.buttonLightColor)),
              ]),
            )
          ],
        ),
        // forgot password
      ],
    );
  }
}
