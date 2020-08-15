import 'package:flutter/material.dart';
import 'package:online_shopping/Screens/homeScreen.dart';

class Drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.green),
          accountName: Text("Sanjay Thakurathi"),
          accountEmail: Text("Thakurathisanjay@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("assets/profil.jpg"),
          ),
          otherAccountsPictures: <Widget>[
            CircleAvatar(
                child: Text(
              "S",
              style: TextStyle(
                color: Colors.red[800],
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ))
          ],
          arrowColor: Colors.green[800],
        ),
        ListTile(
          /* leading: Icon(Icons.contact_phone),
                  title: Text("Contact"),*/
          leading: Icon(Icons.contact_phone),
          title: Text("Contact"),
          onTap: () {},
          enabled: true,
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          onTap: () {},
          title: Text("Account Box"),
          enabled: true,
        ),
        ListTile(
          leading: Icon(Icons.add_alert),
          title: Text("Alert"),
          enabled: true,
        ),
        ListTile(
          leading: Icon(Icons.add_location),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
          },
          title: Text("Add Location"),
        ),
        ListTile(
          leading: Icon(Icons.games),
          onTap: () {},
          title: Text("games"),
        ),
        ListTile(
          leading: Icon(Icons.bug_report),
          onTap: () {},
          title: Text("Report bug"),
        ),
        ListTile(
          leading: Icon(Icons.search),
          onTap: () {},
          title: Text("Search"),
        )
      ],
    );
  }
}
