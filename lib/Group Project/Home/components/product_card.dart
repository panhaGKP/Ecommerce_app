import 'package:flutter/material.dart';
import '../../../models/Product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.product,
    required this.press,
  }) : super(key: key);
  final double width, aspectRetion;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRetion,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 236, 236),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network(
                    product.images[0],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                product.title,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 172, 169, 169)),
                maxLines: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 255, 140, 68),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(5),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: product.isFavorite
                            ? Color.fromARGB(255, 92, 3, 3).withOpacity(0.15)
                            : Color.fromARGB(255, 66, 60, 60).withOpacity(0.15),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: product.isFavorite
                            ? Color(0xFFFF4848)
                            : Color.fromARGB(252, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
