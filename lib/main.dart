import 'package:flutter/material.dart';
import 'package:online_shopping/Screens/homeScreen.dart';
import 'package:online_shopping/Screens/providerlistner.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (BuildContext context) {
        return Providerlist();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
