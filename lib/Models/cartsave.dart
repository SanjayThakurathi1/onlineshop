import 'package:flutter/material.dart';
import 'package:online_shopping/Screens/const.dart';

class Cartsave extends StatefulWidget {
  Cartsave(
      {this.img, this.model, this.name, this.price, this.capicity, this.color});
  final String name;
  final String price;
  final String img;
  final String model;
  final String capicity;
  final String color;
  @override
  _CartsaveState createState() => _CartsaveState();
}

class _CartsaveState extends State<Cartsave> {
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
            height: 430,
            width: 400,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 0.00,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Quantity",
                        style: ktextstylrblack.copyWith(color: Colors.red),
                      ),
                      SizedBox(
                        width: 76,
                      ),
                      Container(
                        height: 220,
                        width: 180,
                        child: Image.asset("${widget.img}"),
                        //color: Colors.green,
                      )
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
                        Text("● Color ${widget.color}", style: ktextstylrblack),
                        Text(
                          "●  ${widget.model}",
                          style: ktextstylrblack,
                        ),
                        Text(
                          "रू  ${widget.price}",
                          style: kTextstylegreen,
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
