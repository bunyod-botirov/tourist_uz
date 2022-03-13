import 'package:flutter/widgets.dart';

class BottomBarProvider extends ChangeNotifier{
  int index = 0;

  void addIndex(item){
    index = item;
    notifyListeners();
  }
}