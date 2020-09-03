import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:online_shopping/Models/Tabbarviewscreen/attachedmoneytabbar.dart';
import 'package:online_shopping/Models/Tabbarviewscreen/hometab.dart';

import 'package:online_shopping/Models/Tabbarviewscreen/shoppingcardtab.dart';
//import 'package:online_shopping/Models/cartsave.dart';
import 'package:online_shopping/Models/listviewfilter.dart';
import 'package:online_shopping/Models/navigatorrail.dart';

import 'const.dart';
import 'listviewscreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int lovecount = 0;
  final List<String> imgList = [
    'assets/infinix1.jpeg',
    'assets/realme61.jpeg',
    'assets/miredminote9.jpeg',
    'assets/pocox1.jpeg',
    'assets/pocox.jpeg',
    'assets/vivoz1x.jpeg',
    'assets/vivoz1x1.jpeg',
    'assets/infinix2.jpeg',
    'assets/infinix.jpeg',
    'assets/pocox2.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: Colors.white,
            drawer: Padding(
              padding: const EdgeInsets.only(top: 29),
              child: Container(
                width: 60,
                child: Drawer(
                  child: Navigatorrail(),
                ),
              ),
            ),
            appBar: AppBar(
              automaticallyImplyLeading: true,
              backgroundColor: Colors.green,
              actions: [
                /* Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: IconButton(
                    color: Colors.black26,
                    icon: Icon(
                      FontAwesomeIcons.solidHeart,
                      size: 40,
                    ),
                    onPressed: () {
                      setState(() {
                        _love = !_love;
                      });
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                backgroundColor: Colors.green,
                                content: Text(
                                  "$lovecount",
                                  style: ktextstylrblack,
                                ),
                              ));
                    },
                  ),
                ),
                */

                IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 35,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      showSearch(context: context, delegate: Productsearch());
                    }),
                Builder(
                  builder: (context) => IconButton(
                      icon: Icon(
                        Icons.add_alert,
                        size: 35,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          behavior: SnackBarBehavior.fixed,
                          backgroundColor: Colors.black,
                          duration: Duration(seconds: 2),
                          content: Text(
                            "No Notification",
                            style: ktextstylrblack.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.green),
                          ),
                        ));
                        /* showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.amber,
                                  content: Text(
                                    "No Notification ",
                                    style: ktextstylrblack,
                                  ),
                                ));
                                */
                      }),
                ),
              ],
              title: Text("Online Shopping"),
              centerTitle: true,
            ),
            bottomNavigationBar: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.home),
                ),
                Tab(
                  child: Icon(
                    Icons.shopping_cart,
                  ),
                ),
                Tab(
                  child: Icon(FontAwesomeIcons.solidHeart),
                ),
                Tab(
                  child: Icon(Icons.account_circle),
                ),
              ],
              labelColor: Colors.red[800],
              indicatorColor: Colors.amber,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(8.0),
            ),
            body: TabBarView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Stack(
                        children: <Widget>[
                          CarouselSlider(
                              items: imgList
                                  .map((item) => Container(
                                      child:
                                          Image.asset(item, fit: BoxFit.cover)))
                                  .toList(),

                              /* items: imgList
                                .map((item) => Container(
                                      height: 150,
                                      child: Image.network(
                                        item,
                                        fit: BoxFit.cover,
                                      ),
                                    ))
                                .toList(),*/
                              options: CarouselOptions(
                                autoPlay: true,
                              )),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                  width: 15,
                                ),
                                Text(
                                  "Special Offer",
                                  style: buildTextStyle(),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  " 10 % off ",
                                  style: buildTextStyleline(),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "20 % off ",
                                  style: buildTextStyle(),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "    Popular Phones",
                          style: buildTextStyle(),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Listviewscreen()));
                          },
                          child: Container(
                            color: Colors.white,
                            child: Text(
                              "View All",
                              style: buildTextStyle(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Listviewscreen(),
                    ),
                  ],
                ),
                ShoppingCardtabbar(),
                Attachedmoneytabbar(),
                Hometab()
              ],
            )));
  }

  TextStyle buildTextStyleline() {
    return TextStyle(
      fontSize: 20,
      color: Colors.red,
      decoration: TextDecoration.lineThrough,
    );
  }
}

TextStyle buildTextStyle() =>
    TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold);

class Productsearch extends SearchDelegate<String> {
  void filterproduct() {}

  final producttag = ['realme', 'vivo', 'pocox', 'infinix', 'redminote9'];
  final recentproducts = ['realme'];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Listviewfilter();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionproduct = query.isEmpty
        ? recentproducts
        : producttag
            .where((productname) => productname.startsWith(query))
            .toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        //leading: Text(suggestionproduct[index]),
        trailing: Icon(
          FontAwesomeIcons.mobile,
          color: Colors.green,
        ),
        title: RichText(
            text: TextSpan(
                text: suggestionproduct[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggestionproduct[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggestionproduct.length,
    );
  }
}
