import 'package:flutter/material.dart';

import '../../../Utils/constant/sizes.dart';

class GridLayout extends StatelessWidget {
  const GridLayout(
      {super.key,
      required this.itemCount,
      required this.itemBuilder,
      this.miniAxisExtent});
  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;
  final double? miniAxisExtent;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: itemCount,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: StoreSizes.gridViewSpacing * 2,
            crossAxisSpacing: StoreSizes.gridViewSpacing * 2,
            mainAxisExtent: miniAxisExtent,
            crossAxisCount: 2),
        itemBuilder: itemBuilder);
  }
}
