import 'package:flutter/material.dart';
import 'package:ecommerce_app/Group%20Project/Home/components/categories.dart';
import 'package:ecommerce_app/Group%20Project/Home/components/product_card.dart';
import 'package:ecommerce_app/Group%20Project/Home/components/search_field.dart';
import 'package:ecommerce_app/models/Product.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';

import 'special_offer.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            HomeHeader(),
            const SizedBox(
              height: 30,
            ),
            DiscountBanner(),
            const SizedBox(
              height: 20,
            ),
            Categories(),
            const SizedBox(
              height: 20,
            ),
            SpecialOffer(),
            const SizedBox(
              height: 40,
            ),
            PopularProduct(),
            const SizedBox(
              height: 40,
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       ...List.generate(
            //           demoProduct.length,
            //           (index) => ProductCard(
            //                 product: demoProduct[index],
            //                 press: () {},
            //               ))
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
