import 'package:flutter/material.dart';

import '../../../app/constants.dart';

class ColorDot extends StatelessWidget {
  final Color fillColor;
  final bool isSelected;

  const ColorDot({Key? key, required this.fillColor, this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      child: Container(decoration: BoxDecoration(color: fillColor, shape: BoxShape.circle)),
      decoration:
          BoxDecoration(shape: BoxShape.circle, border: Border.all(color: isSelected ? Theme.of(context).highlightColor : Colors.transparent)),
    );
  }
}
