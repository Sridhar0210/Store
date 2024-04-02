import 'package:flutter/material.dart';

class ProductPriceTitle extends StatelessWidget {
  const ProductPriceTitle({
    super.key,
    sign,
    this.currencySign = '\$',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.isLineThrough = false,
  });
  final String currencySign, price;
  final int maxLines;
  final bool isLarge, isLineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineSmall!.apply(
              decoration: isLineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: isLineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
