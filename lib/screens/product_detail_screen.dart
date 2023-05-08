import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/products.dart';
import '../provider/product_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;

  // ProductDetailScreen(this.title, this.price);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;

    final loadedProduct = Provider.of<ProductProvider>(
      context,
      listen: false,
    ).findById(productId);
    // is the id!
    // ...
    return Scaffold(
      body: Container(),
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
