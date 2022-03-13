import 'package:flutter/widgets.dart';

class SimProvider extends ChangeNotifier{
  int simIndex = 0;

  void addSim(item){
    simIndex = item;
    notifyListeners();
  }
}