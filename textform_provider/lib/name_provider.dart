// import 'package:flutter/material.dart';

// class name extends ChangeNotifier {
//   String text1 = '';
//   String text2 = '';
//   String get combinedText => '$text1$text2';

//   void change1(String newvalue) {
//     text1 = newvalue;
//     notifyListeners();
//   }

//   void change2(String newvalue) {
//     text2 = newvalue;
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';

class name extends ChangeNotifier {
  String text1 = "";
  String text2 = "";
  String get combinedText => '$text1$text2';

  void change1(String newvalue) {
    text1 = newvalue;
    notifyListeners();
  }void change2(String newvalue) {
    text2 = newvalue;
    notifyListeners();
  }
}
