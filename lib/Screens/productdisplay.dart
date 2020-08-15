import 'package:flutter/material.dart';
import 'package:online_shopping/Models/products.dart';
import 'package:online_shopping/Screens/productdescription.dart';
import 'package:online_shopping/Screens/trendingitems.dart';

import 'description.dart';

class RowHomescreen extends StatelessWidget {
  RowHomescreen(
      {this.productdescription1,
      this.products2,
      this.products1,
      this.productdescription2});
  final ProductDetail productdescription1;
  final ProductDetail productdescription2;
  final Product products2;
  final Product products1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            print("tapped");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Descriptionproduct(products: productdescription1)));
          },
          child: TrendingItem(product: products1),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Descriptionproduct(
                          products: productdescription2,
                        )));
          },
          child: TrendingItem(product: products2),
        ),
      ],
    );
  }
}
