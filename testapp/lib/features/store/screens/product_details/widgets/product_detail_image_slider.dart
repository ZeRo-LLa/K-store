import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testapp/common/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:testapp/common/widgets/appbar/appbar.dart';
import 'package:testapp/common/widgets/icons/t_circular_icon.dart';
import 'package:testapp/common/widgets/images/t_rounded_image.dart';
import 'package:testapp/utils/constants/colors.dart';
import 'package:testapp/utils/constants/image_strings.dart';
import 'package:testapp/utils/constants/sizes.dart';
import 'package:testapp/utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCursedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkGrey : TColors.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSize.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(TImages.productImage1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            //Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSize.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder:
                      (_, __) => const SizedBox(width: TSize.spaceBtwItems),
                  itemCount: 6,
                  itemBuilder:
                      (_, index) => TRoundedImage(
                        width: 80,
                        backgroundColor: dark ? TColors.dark : TColors.white,
                        border: Border.all(color: TColors.primary),
                        padding: const EdgeInsets.all(TSize.sm),
                        imageUrl: TImages.productImage2,
                      ),
                ),
              ),
            ),

            //AppBar Icons
            TAppBar(
              showBackArrow: true,
              actions: [TCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
