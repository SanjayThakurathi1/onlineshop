import 'package:flutter/foundation.dart';
import 'package:online_shopping/Screens/listdescription.dart';

class Providerlist extends ChangeNotifier {
  List<ListDescription> savedCart = [];

  void listdata() {
    var res = savedCart;
    res.forEach((element) {
      print(element.color);
      print(element.price);
      print(element.date);
      print(element.capacity);
      print(element.img);
    });

    notifyListeners();
  }

  void deletedata() {
    savedCart.clear();
    notifyListeners();
  }
}
