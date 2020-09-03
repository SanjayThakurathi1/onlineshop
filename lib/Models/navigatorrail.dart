import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_shopping/Models/cartsave.dart';
import 'package:online_shopping/Screens/const.dart';
import 'package:online_shopping/Screens/drawer.dart';
import 'package:online_shopping/Screens/homeScreen.dart';

class Navigatorrail extends StatefulWidget {
  @override
  _NavigatorrailState createState() => _NavigatorrailState();
}

class _NavigatorrailState extends State<Navigatorrail> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      //extended: true, //when it is true labeltype must be none
      groupAlignment: 0.0,
      labelType: NavigationRailLabelType.selected,
      backgroundColor: Colors.grey[900],
      selectedLabelTextStyle: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 9, color: Colors.amber),
      selectedIndex: selectedindex,
      onDestinationSelected: (value) {
        setState(() {
          selectedindex = value;
        });
      },
      destinations: [
        NavigationRailDestination(
            label: Tooltip(
                textStyle: ktextstylrblack.copyWith(color: Colors.orange),
                message: "This is Home Screen",
                child: Text("HOME")),
            icon: GestureDetector(
              onDoubleTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Icon(
                Icons.home,
              ),
            )),
        NavigationRailDestination(
            label: Text("CART"),
            icon: GestureDetector(
                onDoubleTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Cartsave()));
                },
                child: Icon(Icons.shopping_cart))),
        NavigationRailDestination(
            label: Text("ACCOUNT"),
            icon: GestureDetector(
                onDoubleTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Drawerr()));
                },
                child: Icon(Icons.account_box))),
        NavigationRailDestination(
            label: Text(""),
            icon: GestureDetector(child: Icon(FontAwesomeIcons.solidHeart)))
      ],
      selectedIconTheme: IconThemeData(color: Colors.deepOrangeAccent),
    );
  }
}
