import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/Product.dart';

class Productimages extends StatefulWidget {
  const Productimages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<Productimages> createState() => _ProductimagesState();
}

class _ProductimagesState extends State<Productimages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 400,
          height: 300,
          child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.network(
                widget.product.images[0],
                //fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     buildSmallPreview(product: widget.product),
        //   ],
        // )
      ],
    );
  }
}

// class buildSmallPreview extends StatelessWidget {
//   const buildSmallPreview({
//     Key? key,
//     required this.product,
//   }) : super(key: key);

//   final Product product;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(8),
//       height: 60,
//       width: 60,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: kPrimaryColor),
//       ),
//       child: Image.asset(product.images[0]),
//     );
//   }
// }
