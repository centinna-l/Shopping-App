import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/providers/product_provider.dart';
import 'package:shopping_app/screens/product_detail_screen.dart';
import 'package:shopping_app/screens/product_overview_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Products(),
    child: new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
      ),
      home: ProductOverviewScreen(),
      routes: {
        ProductDetailScreen.routeName: (context) => ProductDetailScreen()
      },
    ),
  ));
}
