import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(TextSpan(
          text: "A Summer Suprise\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "Cashback 20%",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ])),
    );
  }
}
