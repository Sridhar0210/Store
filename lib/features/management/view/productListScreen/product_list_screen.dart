import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../Utils/constant/sizes.dart';
import '../../../../Utils/helpers/helper_function.dart';
import '../../../../common/widgets/widget.images/appbar_widget.dart';
import '../../../../common/widgets/widget.layout/vertical_grid_view.dart';
import '../../../../common/widgets/widget.layout/vertical_product_view.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        showBackArrow: true,
        title: Text(
          "Popular Products",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(StoreSizes.defaultSpace / 2),
              child: DropdownButtonFormField(
                  decoration:
                      const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                  items: [
                    'Brand',
                    'High Price',
                    'Low Price',
                    'Name',
                    'Newest',
                    'Popular'
                  ]
                      .map((option) =>
                          DropdownMenuItem(value: option, child: Text(option)))
                      .toList(),
                  onChanged: (value) {}),
            ),
            const SizedBox(
              height: StoreSizes.spaceBTWItems,
            ),
            GridLayout(
                miniAxisExtent: StoreHelper.screenHeight() * .3,
                itemCount: 10,
                itemBuilder: (_, index) => const VerticalProductGrid())
          ],
        ),
      ),
    );
  }
}
