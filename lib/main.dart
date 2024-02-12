import 'package:add_to_cart/Home/HomeScreen/homescreen.dart';
import 'package:add_to_cart/Home/HomeScreen/products.dart';
import 'package:add_to_cart/Home/HomeScreen/products2.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homescreen(),
        'products' : (context) => const Products(),
        'products2' : (context) => const Products2(),
      },

    ),
  );
}
