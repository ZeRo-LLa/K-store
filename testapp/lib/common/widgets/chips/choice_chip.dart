import 'package:flutter/material.dart';
import 'package:testapp/common/custom_shapes/containers/circular_container.dart';
import 'package:testapp/utils/constants/colors.dart';
import 'package:testapp/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
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
    final isColor = THelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        avatar:
            isColor
                ? TCircularContainer(
                  width: 50,
                  height: 50,
                  backgroundColor: THelperFunctions.getColor(text)!,
                )
                : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        selectedColor: isColor ? THelperFunctions.getColor(text)! : null,
        backgroundColor: isColor ? THelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
