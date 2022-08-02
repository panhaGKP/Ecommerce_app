import 'package:ecommerce_app/cart/cart_screen.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/forgetpassword/forgetpassword_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:ecommerce_app/screens/Sign_in/sign_in.dart';

final Map<String, WidgetBuilder> route = {
  CartScreen.routeName: (context) => CartScreen(),
};

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: ((context) => SplashScreen()),
  SigninScreen.routeName: (context) => SigninScreen(),
  forgetpasswordscreen.routeName: (context) => forgetpasswordscreen(),
};
