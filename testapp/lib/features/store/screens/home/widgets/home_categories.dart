import 'package:flutter/material.dart';
import 'package:testapp/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:testapp/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.carsIcon,
            title: "Cars",
            onTap: () {},
          );
        },
      ),
    );
  }
}
