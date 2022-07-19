import 'package:ecommerce_app/model/Product.dart';
import 'package:flutter/cupertino.dart';

class CartModel {
  late Product product;
  late int numOfItems;

  CartModel({required this.product, required this.numOfItems});
}

List<CartModel> cart = [
  CartModel(product: demoProducts[0], numOfItems: 2),
  CartModel(product: demoProducts[1], numOfItems: 1),
  CartModel(product: demoProducts[3], numOfItems: 1),
];
