// import 'package:flutter/material.dart';

// class ColorProvider extends ChangeNotifier {
//   int theme = 0;
//   List design = [
//     Colors.red,
//     Colors.blue,
//     Colors.green,
//     Colors.purple,
//   ];
//   void change() {
//     theme = (theme + 1) % design.length;
//     notifyListeners();
//   }
// }

//-----------------------------------------------------------------------------------------------------



// import 'package:flutter/material.dart';

// class name extends ChangeNotifier {
//   String text1 = '';
//   String text2 = '';
//   String get textSum => '$text1$text2';

//   void change1(String newValue) {
//     text1 = newValue;
//     notifyListeners();
//   }
//    void change2(String newValue) {
//     text2 = newValue;
//     notifyListeners();
//   }
// }


//-----------------------------------------------------------------------------------------------------


// import 'package:flutter/material.dart';

// class Textprovider extends ChangeNotifier {
//   TextEditingController text1controller = TextEditingController();
//   TextEditingController text2controller = TextEditingController();
//   int text = 0;

//   textAdder() {
//     text = int.parse(text1controller.text) + int.parse(text2controller.text);
//     // text = text1controller.text + text2controller.text;
//     notifyListeners();
//   }
// }

//-----------------------------------------------------------------------------------------------------



import 'package:flutter/material.dart';

class counter extends ChangeNotifier {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    if (count > 0) {
      count--;
    }

    notifyListeners();
  }

  void reset() {
    count = 0;
    notifyListeners();
  }
}
