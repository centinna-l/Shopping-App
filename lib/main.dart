import 'package:flutter/material.dart';
import 'package:shopping_app/screens/product_overview_screen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato'),
    home: ProductOverviewScreen(),
  ));
}
