import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/providers/product_provider.dart';
import 'package:shopping_app/widgets/products_items.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final loadedProduct = productsData.items;
    return GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProduct.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, i) => ProductsItem(
              id: loadedProduct[i].id,
              title: loadedProduct[i].title,
              imageUrl: loadedProduct[i].imageUrl,
            ));
  }
}
