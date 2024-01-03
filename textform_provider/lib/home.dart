// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:textform_provider/name_provider.dart';

// final textcontroller = TextEditingController();
// final textcontroller2 = TextEditingController();

// class Home extends StatelessWidget {
//   const Home({super.key});

// ignore_for_file: prefer_const_constructors

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                   hintText: "type here...",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20))),
//               controller: textcontroller,
//             ),
//             SizedBox(height: 5),
//             TextField(
//               decoration: InputDecoration(
//                   hintText: "type here...",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20))),
//               controller: textcontroller2,
//             ),
//             SizedBox(height: 5),
//             ElevatedButton(
//                 onPressed: () {
//                   Provider.of<name>(context, listen: false)
//                       .change1(textcontroller.text);
//                   Provider.of<name>(context, listen: false)
//                       .change2(textcontroller2.text);
//                 },
//                 child: Text("add text")),
//             SizedBox(height: 8),
//             Consumer<name>(
//                 builder: (context, value, child) => Text(value.combinedText))
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:textform_provider/name_provider.dart';

final textcontroller = TextEditingController();
final textcontroller2 = TextEditingController();

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "type here...",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
              controller: textcontroller,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  hintText: "type here...",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
              controller: textcontroller2,
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<name>(context, listen: false)
                      .change1(textcontroller.text);
                  Provider.of<name>(context, listen: false)
                      .change2(textcontroller2.text);
                },
                child: Text("add text")),
            SizedBox(height: 30),
            Consumer<name>(
                builder: (context, value, child) => Text(value.combinedText))
          ],
        ),
      ),
    );
  }
}
