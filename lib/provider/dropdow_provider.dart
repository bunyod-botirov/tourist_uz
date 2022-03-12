import 'package:flutter/widgets.dart';
import 'package:tourist_uz/constants/db.dart';

class DropdownProvider extends ChangeNotifier{
  String city = citys[0];

  void addCity(v){
    city = v;
    notifyListeners();
  }
}