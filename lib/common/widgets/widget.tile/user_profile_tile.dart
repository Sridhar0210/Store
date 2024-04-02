import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../Utils/constant/sizes.dart';
import '../widget.container/circular_container.dart';

class StoreUserProfileTile extends StatelessWidget {
  const StoreUserProfileTile({
    super.key,
    this.userName,
    this.email,
    this.userImage,
    required this.onPressed,
  });
  final String? userName, email, userImage;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        trailing:
            IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit)),
        subtitle: Text(
          email!,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        title:
            Text(userName!, style: Theme.of(context).textTheme.headlineSmall),
        leading: CircularContainer(
          circularImage: userImage!,
          showImage: true,
          radius: StoreSizes.m,
        ));
  }
}
