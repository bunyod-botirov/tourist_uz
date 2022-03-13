import 'package:flutter/widgets.dart';

class ListProvider extends ChangeNotifier{
  int item = 1;
  List hotel = ["Houses","Hotels","Villas"];
  String name = "Hotels";

  void addIndex(index){
    item = index;
    name = hotel[index];
    notifyListeners();
  }
}