import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/providers/product_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context).settings.arguments as String; //Stores as ID
    final productsData =
        Provider.of<Products>(context, listen: false).findByID(productId);
    return Scaffold(
      appBar: new AppBar(
        title: Text("${productsData.title}"),
      ),
    );
  }
}
