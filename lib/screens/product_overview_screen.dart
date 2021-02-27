import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/products_grid.dart';
import 'package:shopping_app/widgets/products_items.dart';
import '../models/Product.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Shopping App"),
      ),
      body: SafeArea(
        child: ProductsGrid(),
      ),
    );
  }
}
