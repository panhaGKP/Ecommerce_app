import 'package:flutter/material.dart';
import '../Detail/detail_screen.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/Home";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(
        product: null,
      ),
    );
  }
}
