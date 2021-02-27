import 'package:flutter/material.dart';
import 'package:shopping_app/screens/product_detail_screen.dart';

class ProductsItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  ProductsItem({this.id, this.title, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(ProductDetailScreen.routeName, arguments: id);
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {
                print("Favorite Button CLicked");
              }),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {
              print("Shopping cart button pressed");
            },
          ),
          title: Text(
            '$title',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
