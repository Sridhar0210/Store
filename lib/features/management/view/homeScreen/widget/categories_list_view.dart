import 'package:flutter/material.dart';

import '../../../../../Utils/constant/icon_strings.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../common/widgets/widget.images/vertical_image_text.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
    this.listViewHeight,
    this.scrollDirection = false,
  });
  final double? listViewHeight;
  final bool scrollDirection;

  @override
  Widget build(BuildContext context) {
    final List iconList = [
      StoreIcon.airplane,
      StoreIcon.atmCard,
      StoreIcon.grocery,
      StoreIcon.bank,
      StoreIcon.baby,
      StoreIcon.cash,
      StoreIcon.cashbook,
    ];
    return Padding(
      padding: const EdgeInsets.only(left: StoreSizes.s),
      child: SizedBox(
        height: listViewHeight,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: scrollDirection ? Axis.horizontal : Axis.vertical,
            itemCount: iconList.length,
            itemBuilder: (context, int index) {
              return StoreVerticalImageText(
                  containerImage: iconList[index].toString(),
                  radius: StoreSizes.iconXl,
                  imageTitle: 'Text Overflow');
            }),
      ),
    );
  }
}
