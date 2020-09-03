import 'package:flutter/material.dart';
import 'package:online_shopping/Models/Tabbarviewscreen/attachedmoneytabbar.dart';

import 'package:online_shopping/Models/database.dart';
import 'package:online_shopping/Screens/const.dart';

import 'package:online_shopping/Screens/listdescription.dart';

class Cartsave extends StatefulWidget {
  @override
  _CartsaveState createState() => _CartsaveState();
}

class _CartsaveState extends State<Cartsave> {
  int count = 0;
  void updatelistview() {
    setState(() {
      this.notelist = notelist;
      this.notelist.length = notelist.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: queryall(),
        builder: (context, snapshot) {
          return Listviewbuilder(
            notelist: notelist,
            updatelist: updatelistview,
          );
        });
  }

  //var name, price, img, capacity, model, color;
  List<ListDescription> notelist = List();

  Future<List<ListDescription>> queryall() async {
    final db = DatabaseHelper.instance;
    notelist = List<
        ListDescription>(); //clear the list before adding else it will replicate
    final List<Map<String, dynamic>> allqueries = await db.queryall();

    int count = allqueries.length;

    for (int i = 0; i < count; i++) {
      notelist.add(ListDescription.extractfrommap(allqueries[i]));
      print(notelist[i].date);
    }
  }
}

class Listviewbuilder extends StatefulWidget {
  Listviewbuilder({Key key, @required this.notelist, this.updatelist});

  final List<ListDescription> notelist;
  final Function updatelist;

  @override
  _ListviewbuilderState createState() => _ListviewbuilderState();
}

class _ListviewbuilderState extends State<Listviewbuilder> {
  final db = DatabaseHelper.instance;
  bool check = false;
  void checkoutdatabase(BuildContext context) async {
    int res = await db.getnumofobjectfromdatabase();
    print(res);
    if (res == null) {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (_) => AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                backgroundColor: Colors.amber,
                content: Text(
                  "Cart is Empty",
                  style: kTextstylegreen,
                ),
              ));
    } else
      return;
  }

  @override
  void didChangeDependencies() {
    // checkoutdatabase(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return ListView.builder(
        itemCount: widget.notelist.length,
        itemBuilder: (context, index) => Dismissible(
              background: Container(
                color: Colors.black,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Are you sure you want to delete",
                    style: ktextstylrblack.copyWith(color: Colors.red),
                  ),
                ),
              ),
              key: UniqueKey(),
              onDismissed: (DismissDirection direction) async {
                if (direction == DismissDirection.startToEnd) {
                } else {
                  print('Remove item');
                }
                final db = DatabaseHelper.instance;
                db.deletedata(widget.notelist[index].id);
                setState(() {
                  widget.notelist.removeAt(index);
                  Scaffold.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.black,
                    duration: Duration(seconds: 2),
                    content: Text(
                      "    Deleted Sucessfully",
                      style: ktextstylrblack.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.red),
                    ),
                  ));
                });
              },
              child: Card(
                color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          /* Padding(
                            padding: const EdgeInsets.only(left: 315),
                            child: Builder(
                              builder: (BuildContext context) => IconButton(
                                  splashColor: Colors.red,
                                  color: Colors.black,
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                  /* Text(
                                                "REMOVE",
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              */

                                  onPressed: () async {
                                    Scaffold.of(context).showSnackBar(SnackBar(
                                      backgroundColor: Colors.black,
                                      duration: Duration(seconds: 2),
                                      content: Text(
                                        "    Deleted Sucessfully",
                                        style: ktextstylrblack.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.red),
                                      ),
                                    ));
                                    final db = DatabaseHelper.instance;
                                    db.deletedata(widget.notelist[index].id);
                                    widget.updatelist();
                                  }),

                            ),
                            
                          ),
                          */
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 80,
                              ),
                              Container(
                                height: 220,
                                width: 180,
                                child: ClipRect(
                                    clipBehavior: Clip.hardEdge,
                                    child: Image.asset(
                                        "${widget.notelist[index].img}")),
                                //color: Colors.green,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 155,
                            width: 390,
                            //color: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "● RAM/ROM Capacity  ${widget.notelist[index].capacity}",
                                  style: kTextstylegreen,
                                ),
                                Text("● Color ${widget.notelist[index].color}",
                                    style: kTextstylegreen),
                                Text(
                                  "● Brand  ${widget.notelist[index].name}",
                                  style: kTextstylegreen,
                                ),
                                Text(
                                  "रू  ${widget.notelist[index].price}",
                                  style: kTextstylegreen,
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, left: 155),
                                  child: Text(
                                    "${widget.notelist[index].date}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
