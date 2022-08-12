import 'package:flutter/material.dart';
import '../../models/Product.dart';
import 'components/custom_app_bar.dart';
import 'components/body.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  //const DetailScreen({super.key});
  static String routeName = "/Detail";
  // List<Product> productList = demoProduct;
  Product product;

  DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomApBar(
        product.rating,
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Text("This is app bar"),
        ),
      ),
      body: Body(product: product),
      // body: Container(),
    );
  }
}
