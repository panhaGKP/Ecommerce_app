import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../models/Product.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          product.title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(15),
          width: 64,
          decoration: BoxDecoration(
              color: product.isFavorite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )),
          child: SvgPicture.asset(
            "assets/icons/Heart Icon_2.svg",
            color: Color(0xFFFF4848),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 64,
        ),
        child: Text(
          product.description,
          maxLines: 3,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GestureDetector(
          onTap: pressOnSeeMore,
          child: Row(
            children: const [
              Text(
                "See More Detail",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: kPrimaryColor,
              )
            ],
          ),
        ),
      )
    ]);
  }
}
