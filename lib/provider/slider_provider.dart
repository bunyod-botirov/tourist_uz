import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SliverProvider extends ChangeNotifier {
  var selekt = RangeValues(1.0, 1000.0);

  void addSliver(newRange) {
    selekt = newRange;
    notifyListeners();
  }
}
