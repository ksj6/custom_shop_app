import 'package:flutter/material.dart';
import '../widgets/product_item.dart';

import '../model/products.dart';
import 'package:provider/provider.dart';
import '../provider/product_provider.dart';
import './product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // <> to let it know that the provider.of is generic and to know whcich type of data we are listening to
    // we want to dirctly establish a communication channel to the provided instance of the products class
    final productsData = Provider.of<ProductProvider>(context);
    final products = productsData.items; // gives the list of products
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id,
        products[i].title,
        products[i].imageUrl,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
