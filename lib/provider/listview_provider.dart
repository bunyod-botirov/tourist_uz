import 'package:flutter/widgets.dart';

class ListProvider extends ChangeNotifier{
  int item = 1;

  void addIndex(index){
    item = index;
    notifyListeners();
  }
}