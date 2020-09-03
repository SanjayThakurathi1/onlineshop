import 'package:flutter/material.dart';

import 'package:online_shopping/Models/database.dart';
import 'package:online_shopping/Screens/listdescription.dart';
import 'package:online_shopping/Screens/providerlistner.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import 'const.dart';

class Cart extends StatefulWidget {
  Cart(
      {this.img, this.model, this.name, this.price, this.capicity, this.color});
  final String name;
  final String price;
  final String img;
  final String model;
  final String capicity;
  final String color;
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  String date = DateFormat.yMEd().add_jms().format(DateTime.now());

  String name, price, img, capacity, color;

  final db = DatabaseHelper.instance;
  void queryall() async {
    var allqueries = await db.queryall();
    allqueries.forEach((allqueries) {
      name = allqueries['name'];
      price = allqueries['price'];

      img = allqueries['photo'];
      capacity = allqueries['capacity'];
      date = allqueries['model'];
      color = allqueries['color'];
    });

    final id = allqueries;
    print(allqueries);

    print(id);
  }

  int x = 1;
  Color colour;
  Color colorr() {
    if (widget.color == "red") {
      colour = Colors.red;
    } else if (widget.color == "green") {
      colour = Colors.green;
    } else {
      colour = Colors.black;
    }
    return colour;
  }

  Future<int> insert() async {
    Map<String, dynamic> row = {
      DatabaseHelper.coloumnname: widget.name,
      DatabaseHelper.coloumnprice: widget.price,
      DatabaseHelper.coloumphoto: widget.img,
      DatabaseHelper.coloummodel: date,
      DatabaseHelper.coloumncapacity: widget.capicity,
      DatabaseHelper.coloumncolor: widget.color,
    };

    final id = await db.insert(row);

    Provider.of<Providerlist>(context, listen: false).savedCart.add(
        ListDescription(
            capacity: widget.capicity,
            color: widget.color,
            img: widget.img,
            date: widget.model,
            name: widget.name,
            price: widget.price));

    return id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: Colors.green,
        title: Text(
          " Shopping Cart",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.green,
            height: 440,
            width: 400,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 200,
                    ),
                    child: Text(
                      "Num of Quantity",
                      style: kTextstylegreen,
                    ),
                  ),
                  SizedBox(
                    height: 0.00,
                  ),
                  Row(
                    children: <Widget>[
                      FloatingActionButton(
                        splashColor: Colors.amber,
                        heroTag: null,
                        tooltip: "Decrease the num of Quantity",
                        backgroundColor: Colors.green,
                        onPressed: () {
                          setState(() {
                            x == 1 ? x = 1 : x--;
                          });
                        },
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "$x",
                        style: ktextstylrblack.copyWith(color: Colors.red),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      FloatingActionButton(
                          splashColor: Colors.amber,
                          heroTag: null,
                          tooltip: "Increase the num of Quantity",
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 40,
                          ),
                          backgroundColor: Colors.green,
                          onPressed: () {
                            setState(() {
                              x++;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 220,
                        width: 180,
                        child: Image.asset(widget.img),
                        //color: Colors.green,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 145,
                    width: 390,
                    //color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "● RAM/ROM Capacity  ${widget.capicity}",
                          style: ktextstylrblack,
                        ),
                        Text(
                          "● Color ${widget.color}",
                          style: ktextstylrblack.copyWith(color: colorr()),
                        ),
                        Text(
                          "●  ${widget.model}",
                          style: ktextstylrblack,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "रू  ${widget.price}",
                              style: kTextstylegreen,
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            FloatingActionButton(
                                tooltip: "Save to Cart",
                                splashColor: Colors.lightBlue,
                                heroTag: null,
                                backgroundColor: Colors.deepOrangeAccent,
                                child: Text("save"),
                                onPressed: () {
                                  showDialog(
                                      barrierDismissible: true,
                                      builder: (context) => AlertDialog(
                                            backgroundColor: Colors.amber,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.horizontal()),
                                            actions: [
                                              Text(
                                                "Saved to Cart",
                                                style: kTextstylegreen,
                                              ),
                                              SizedBox(
                                                width: 86,
                                              ),
                                            ],
                                          ),
                                      context: (context));

                                  insert();
                                }),
                            SizedBox(
                              width: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
