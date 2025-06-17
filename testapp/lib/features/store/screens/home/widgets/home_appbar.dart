import 'package:flutter/material.dart';
import 'package:testapp/common/widgets/appbar/appbar.dart';
import 'package:testapp/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:testapp/utils/constants/colors.dart';
import 'package:testapp/utils/constants/text_strings.dart';
import 'package:testapp/utils/device/device_utility.dart';

class THomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const THomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TText.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: TColors.grey),
          ),
          Text(
            TText.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: TColors.white),
          ),
        ],
      ),
      actions: [TCartCountericon(onPressed: () {}, iconColor: TColors.white)],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
