import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:online_shopping/Screens/cart.dart';

import 'package:online_shopping/Screens/customdotted_slider.dart';
import 'package:online_shopping/Screens/imageupload.dart';

import 'package:online_shopping/Screens/productdescription.dart';

import 'const.dart';

class Descriptionproduct extends StatefulWidget {
  Descriptionproduct({this.products});
  final ProductDetail products;
  @override
  _DescriptionproductState createState() => _DescriptionproductState();
}

class _DescriptionproductState extends State<Descriptionproduct> {
  bool addtocart = false;
  bool x = false;
  bool y = false;
  bool z = false;
  bool p = false;
  bool q = false;
  bool r = false;
  String capacity = "3/32";

  String color = "black";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              "Cart",
              style: ktextstylrblack.copyWith(
                  color:
                      (x == true || y == true || z == true) & addtocart == true
                          ? Colors.amber
                          : Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 50,
              ),
              onPressed: () {
                addtocart
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Cart(
                                  price: widget.products.price,
                                  img: widget.products.img1,
                                  model: widget.products.company,
                                  name: widget.products.name,
                                  capicity: capacity,
                                  color: color,
                                )))
                    : showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              backgroundColor: Colors.green,
                              content: Text(
                                "Cart is empty please Add to cart",
                                style: ktextstylrblack,
                              ),
                            ));
              },
              color: (x == true || y == true || z == true) && addtocart
                  ? Colors.amber
                  : Colors.black,
            ),
          )
        ],
        elevation: 5,
        backgroundColor: Colors.green,
        title: Text("Ecommerce"),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Text("रू", style: kTextstylegreen),
            SizedBox(
              width: 10,
            ),
            Text(
              "${widget.products.previousprice}",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.lineThrough),
            ),
            Text(
              "${widget.products.price}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 60,
              child: RaisedButton.icon(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  splashColor: Colors.lightBlue,
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      if (x == true || y == true || z == true) {
                        addtocart = true;
                      } else {
                        addtocart = false;
                      }
                    });
                    x == true || y == true || z == true
                        ? showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.amber,
                                  content: Text(
                                    "Added Sucessfully Please Check your Cart",
                                    style: ktextstylrblack,
                                  ),
                                ))
                        : showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.red,
                                  content: Text(
                                    "Please Select memory Capacity",
                                    style: ktextstylrblack,
                                  ),
                                ));
                  },
                  icon: Icon(
                    Icons.add_shopping_cart,
                    size: 55,
                    color: Colors.green,
                  ),
                  label: Text("Add to Cart", style: kTextstylegreen)),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DottedSlider(
              children: <Widget>[
                ImageContainer(
                  img: Image(image: AssetImage(widget.products.img1)),
                ),
                ImageContainer(
                  img: Image(image: AssetImage(widget.products.img2)),
                ),
                ImageContainer(
                  img: Image(image: AssetImage(widget.products.img3)),
                ),
                ImageContainer(
                  img: Image(image: AssetImage(widget.products.img4)),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  //color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(25)),
              height: 180,
              width: 380,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    " ${widget.products.company}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Specification",
                    style: kTextstylegreen,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "  ●     Brand Name : ${widget.products.name}",
                    style: ktextstylrblack,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("●       Category: ${widget.products.categories}",
                      style: ktextstylrblack),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  // color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(25)),
              height: 80,
              width: 450,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      focusColor: Colors.green,
                      elevation: 6,
                      color: x ? Colors.amber : Colors.grey,
                      onPressed: () {
                        setState(() {
                          x = true;
                          y = false;
                          z = false;
                          capacity = "3/32";
                        });
                      },
                      child: Text("3/32")),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      color: y ? Colors.amber : Colors.grey,
                      elevation: 6,
                      onPressed: () {
                        setState(() {
                          x = false;
                          y = true;
                          z = false;
                          capacity = "4/64";
                        });
                      },
                      child: Text("4/64")),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      color: z ? Colors.amber : Colors.grey,
                      onPressed: () {
                        setState(() {
                          x = false;
                          y = false;
                          z = true;
                          capacity = "6/64";
                        });
                      },
                      child: Text("6/128")),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Capacity",
                    style: kTextstylegreen,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              // color: Colors.lightBlue,
              height: 80,
              width: 380,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Colorcontainer(
                          color: Colors.black,
                        ),
                        Checkbox(
                          activeColor: Colors.black,
                          value: p,
                          onChanged: (bool value) {
                            setState(() {
                              q = false;
                              r = false;
                              p = !p;
                              color = "black";
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Colorcontainer(
                          color: Colors.red,
                        ),
                        Checkbox(
                          activeColor: Colors.red,
                          value: q,
                          onChanged: (bool value) {
                            setState(() {
                              p = false;
                              r = false;
                              q = !q;
                              color = "red";
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Colorcontainer(
                          color: Colors.green,
                        ),
                        Checkbox(
                          activeColor: Colors.green,
                          value: r,
                          onChanged: (bool value) {
                            setState(() {
                              p = false;
                              q = false;
                              r = !r;
                              color = "green";
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Color",
                      style: kTextstylegreen,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              width: 380,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Description",
                    style: kTextstylegreen,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.products.description,
                    style: kTextstylegreen,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Colorcontainer extends StatelessWidget {
  Colorcontainer({this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
    );
  }
}
