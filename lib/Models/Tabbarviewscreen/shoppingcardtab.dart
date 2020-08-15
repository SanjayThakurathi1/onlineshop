import 'package:flutter/material.dart';
import 'package:online_shopping/Screens/providerlistner.dart';
import 'package:provider/provider.dart';

import '../cartsave.dart';
import '../database.dart';

class ShoppingCardtabbar extends StatefulWidget {
  @override
  _ShoppingCardtabbarState createState() => _ShoppingCardtabbarState();
}

class _ShoppingCardtabbarState extends State<ShoppingCardtabbar> {
  String name, price, img, model, capacity, color;
  var allqueries;

  final db = DatabaseHelper.instance;
  Future<List> queryall() async {
    final allqueries = await db.queryall();
    print(allqueries);
    allqueries.forEach((allqueries) {
      name = allqueries['name'];
      price = allqueries['price'];
      img = allqueries['photo'];
      capacity = allqueries['capacity'];
      model = allqueries['model'];
      color = allqueries['color'];
    });

    return allqueries;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Providerlist>(
      builder: (context, providerl, child) {
        return ListView.builder(
          itemCount: providerl.savedCart.length,
          itemBuilder: (context, index) {
            return /*Cartsave(
              capicity: allqueries['capacity'],
              color: allqueries['color'],
              img: allqueries['photo'],
              model: allqueries['model'],
              name: allqueries['name'],
              price: allqueries['price'],
            );
            */
                Cartsave(
              capicity: providerl.savedCart[index].capacity,
              color: providerl.savedCart[index].color,
              img: providerl.savedCart[index].img,
              model: providerl.savedCart[index].model,
              name: providerl.savedCart[index].name,
              price: providerl.savedCart[index].price,
            );
          },
        );
      },
    );
  }
}
