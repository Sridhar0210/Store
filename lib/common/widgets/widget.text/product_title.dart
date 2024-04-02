import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
    required this.productTitle,
    this.smallSize = false,
    this.overflow,
    this.maxLines = 2,
  });
  final String productTitle;
  final TextOverflow? overflow;
  final bool smallSize;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      productTitle,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: TextAlign.left,
    );
  }
}
