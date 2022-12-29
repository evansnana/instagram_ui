import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("TAB BAR"),
        //   centerTitle: true,
        // ),
        // body: Column(
        //   children:  [
        //     TabBar(tabs: [
        //       Tab(
        //         icon: Icon(Icons.home,color: Colors.blue,),
        //       ),
        //         Tab(
        //         icon: Icon(Icons.category_outlined,color: Colors.blue,),
        //       ), 
        //        Tab(
        //         icon: Icon(Icons.person_add_alt_1_outlined,color: Colors.blue,),
        //       ),
        //     ]),
        //     Expanded(
        //       child: TabBarView(children: [
        //         Container(
        //           child: Text("Container"),
        //           color: Colors.yellow,
        //         ),
        //          Container(
        //           child: Text("Container"),
        //           color: Colors.blue,
        //         ),
        //          Container(
        //           color: Colors.red,
        //           child: Text("Container"),
        //         ),
        //       ]),
        //     )
        //   ],
        // ),
    
      ),
    );
  }
}