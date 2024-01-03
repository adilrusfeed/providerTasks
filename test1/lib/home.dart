// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:test1/provider.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Consumer<ColorProvider>(
//           builder: (context, value, child) => Container(
//             height: 400,
//             width: 400,
//             decoration:
//                 BoxDecoration(color:value.design.elementAt(value.theme)),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Provider.of<ColorProvider>(context, listen: false).change();
//         },
//         child: Icon(Icons.change_circle),
//       ),
//     );
//   }
// }

//------------------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:test1/provider.dart';

// final textcontroller1 = TextEditingController();
// final textcontroller2 = TextEditingController();

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

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
//                   prefixIcon: Icon(Icons.edit),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20)))),
//               controller: textcontroller1,
//             ),
//             SizedBox(height: 10),
//             TextField(
//               decoration: InputDecoration(
//                   hintText: "type here...",
//                   prefixIcon: Icon(Icons.edit_attributes),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20)))),
//               controller: textcontroller2,
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//                 onPressed: () {
//                   Provider.of<name>(context, listen: false)
//                       .change1(textcontroller1.text);
//                   Provider.of<name>(context, listen: false)
//                       .change2(textcontroller2.text);
//                 },
//                 child: Text("add text")),
//             SizedBox(height: 25),
//             Consumer<name>(
//                 builder: (context, value, child) => Text(
//                       value.textSum,
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     )),
//           ],
//         ),
//       ),
//     );
//   }
// }

//-----------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'package:test1/provider.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final textpro = Provider.of<Textprovider>(context, listen: false);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Text Adder'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Consumer<Textprovider>(
//               builder: (context, value, child) {
//                 return Text(
//                   value.text.toString(),
//                   style: const TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 );
//               },
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: TextFormField(
//                 controller: textpro.text1controller,
//                 decoration: const InputDecoration(
//                     hintText: 'Enter anything', border: OutlineInputBorder()),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: TextFormField(
//                 controller: textpro.text2controller,
//                 decoration: const InputDecoration(
//                     hintText: 'Enter anything', border: OutlineInputBorder()),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   textpro.textAdder();
//                 },
//                 child: const Icon(Icons.add))
//           ],
//         ),
//       ),
//     );
//   }
// }

//-----------------------------------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<counter>(
          builder: (context, value, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${value.count}"),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    value.increment();
                  },
                  child: Icon(Icons.add)),
              ElevatedButton(
                  onPressed: () {
                    value.decrement();
                  },
                  child: Icon(Icons.remove)),
              ElevatedButton(
                  onPressed: () {
                    value.reset();
                  },
                  child: Icon(Icons.restore))
            ],
          ),
        ),
      ),
    );
  }
}
