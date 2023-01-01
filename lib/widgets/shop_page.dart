import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/buttonPage.dart/screen_one.dart';
import 'package:instagram/buttonPage.dart/theme.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TAB BAR AND DARK MODE"),
          iconTheme: IconThemeData(
            color: Colors.grey
            ),
          actions: [
            IconButton(
                onPressed: () {
                  ThemeProvider themeProvider =
                      Provider.of(context, listen: false);
                  themeProvider.swapTheme();
                },
                icon: Icon(Icons.brightness_6,size: 40,))
          ],
        ),
        body: Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.category_outlined,
                  color: Colors.blue,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person_add_alt_1_outlined,
                  color: Colors.blue,
                ),
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                 ScreenOne(),
                Container(
                  child: Text("Container"),
                  color: Colors.yellow,
                ),
              
                Container(
                  color: Colors.grey,
                  child: Text("Container"),
                ),
                Container(
                  color: Colors.green,
                  child: Text("Container"),
                ),
                Container(
                  color: Colors.pink,
                  child: Text("Container"),
                ),
              ]),
            ),
           
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class Cart extends StatefulWidget {
//   Cart({super.key});

//   @override
//   State<Cart> createState() => _CartState();
// }

// class _CartState extends State<Cart> {
//   int counterApp = 0;

//   void _increaseCounter() {
//     setState(() {
//       counterApp++;
//     });
//   }

//   void _decreaseCounter() {
//     setState(() {
//       counterApp--;
//     });
//   }

//   void _jumpCounter() {
//     setState(() {
//       if (counterApp == 10) {
//         counterApp +10;
//       }
//       counterApp +2;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Counter App"),
//         backgroundColor: Colors.green,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             counterApp.toString(),
//             style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextButton(
//                 onPressed: _increaseCounter,
//                 child: Text(
//                   "increment",
//                   style: TextStyle(
//                       color: Colors.white,
//                       backgroundColor: Colors.green,
//                       fontSize: 20),
//                 ),
//               ),
//               TextButton(
//                   onPressed: _decreaseCounter,
//                   child: Text("Decrement",
//                       style: TextStyle(
//                           color: Colors.white,
//                           backgroundColor: Colors.green,
//                           fontSize: 20))),
//             ],
//           ),
//           FloatingActionButton(
//             onPressed: _jumpCounter,
//             child: Text("Jump"),
//           )
//         ],
//       ),
//     );
//   }
// }
