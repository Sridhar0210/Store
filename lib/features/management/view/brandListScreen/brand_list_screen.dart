import 'package:flutter/material.dart';

import '../../../../Utils/constant/icon_strings.dart';
import '../../../../Utils/constant/sizes.dart';
import '../../../../Utils/helpers/helper_function.dart';
import '../../../../common/widgets/widget.images/appbar_widget.dart';
import '../../../../common/widgets/widget.layout/vertical_grid_view.dart';
import '../storeScreen/Widgets/brand_banners.dart';

class BrandListScreen extends StatelessWidget {
  const BrandListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        showBackArrow: true,
        title: Text(
          "Brand",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(StoreSizes.defaultSpace / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Brands",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: StoreSizes.spaceBTWItems,
              ),
              GridLayout(
                miniAxisExtent: StoreHelper.screenHeight() * .075,
                itemCount: 20,
                itemBuilder: (_, index) {
                  return const BrandBanners(
                    border: true,
                    brandSubTitle: '4556 products',
                    brandImage: StoreIcon.airplane,
                    brandTitle: 'kingFisher',
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
