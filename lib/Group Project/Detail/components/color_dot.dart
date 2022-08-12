import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    this.isSelected = false,
  }) : super(key: key);
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: kPrimaryColor)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
      ),
    );
    Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: kPrimaryColor)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
