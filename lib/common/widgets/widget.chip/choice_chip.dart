import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/helpers/helper_function.dart';
import 'package:e_commerce_application/common/widgets/widget.container/product_container.dart';
import 'package:flutter/material.dart';

class StoreChoiceChip extends StatelessWidget {
  const StoreChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = StoreHelper.getColor(text) != null;
    return ChoiceChip(
      backgroundColor: isColor ? StoreHelper.getColor(text) : null,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      selectedColor: StoreColors.secondary,
      shape: isColor ? const CircleBorder() : null,
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      padding: isColor ? const EdgeInsets.all(0) : null,
      labelStyle: TextStyle(color: selected ? StoreColors.white : null),
      avatar: isColor
          ? ProductContainer(
              width: 50,
              height: 50,
              backLightGroundColor: StoreHelper.getColor(text),
              backDarkGroundColor: StoreHelper.getColor(text),
            )
          : null,
    );
  }
}
