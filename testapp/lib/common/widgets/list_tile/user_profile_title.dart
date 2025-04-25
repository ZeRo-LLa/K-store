import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testapp/common/widgets/images/t_circular_image.dart';
import 'package:testapp/utils/constants/colors.dart';
import 'package:testapp/utils/constants/image_strings.dart';

class TUserProfileTitle extends StatelessWidget {
  const TUserProfileTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImages.user,
        height: 64,
        width: 60,
        padding: 0,
      ),
      title: Text(
        'Illia',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: TColors.white),
      ),
      subtitle: Text(
        'mushyk.illia.s@gmail.com',
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.edit, color: TColors.white),
      ),
    );
  }
}
