import 'package:flutter/material.dart';

//import '../model/products.dart';
//import '../widgets/product_item.dart';
import '../widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: ProductsGrid(),

      // we will get that itself by using the provider
    );
  }
}
