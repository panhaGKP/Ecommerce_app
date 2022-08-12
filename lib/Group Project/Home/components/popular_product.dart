import 'package:flutter/material.dart';

import '../../../models/Product.dart';
import 'product_card.dart';
import 'section_title.dart';
import '../../Detail/detail_screen.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProduct.length,
                (index) {
                  if (demoProduct[index].isPopular) {
                    return ProductCard(
                        product: demoProduct[index],
                        press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      product: demoProduct[index])),
                            ));

                    //   press: () => Navigator.pushNamed(
                    //     context,
                    //     DetailScreen.routeName,
                    //     arguments:
                    //         ProductDetailArgument(product: demoProduct[index]),
                    //   ),
                    // );
                  }
                  return const SizedBox.shrink();
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}
