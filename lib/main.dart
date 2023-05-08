import 'package:flutter/material.dart';

import './screens/products_overview_screens.dart';
import './screens/product_detail_screen.dart';
import './provider/product_provider.dart';

import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ProductProvider(),
      // provides a instance for all the child widgets which can set up a listener to this same instance of this class and whenever
      // we change something in this class and then when we call notify listeners , the widgets whcih are listening will be rebuilt.
      child: MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
          ),
          home: ProductsOverviewScreen(),
          // routes for the modal route settings are defined and then initilaization are given accirdingly to the navigator settings set .
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          }),
    );
  }
}
//the gridview Creates a scrollable, 2D array of widgets with a custom [SliverGridDelegate].
        // the use of builder for gridview:
        //Providing a non-null itemCount improves the ability of the [GridView] to estimate the maximum scroll extent.
        //itemBuilder will be called only with indices greater than or equal to zero and less than itemCount.


// defineshow grid cell is built
          // i can define that i want to have certian amount of tiles and listtiles defined anad it will simply squeeze the items on the screen
          // crossAxiscount is the amount of columns that we want to have
          // width spacing between the columns is the crossaxisspacing.

//using the ProductItem from the product_item.dart which we have imported now.
          // here ctx is the context and the i is the index for which we are currently building.