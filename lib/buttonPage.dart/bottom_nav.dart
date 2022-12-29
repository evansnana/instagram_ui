import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:instagram/buttonPage.dart/movie_Page.dart';
import 'package:instagram/buttonPage.dart/profile_page.dart';
import 'package:instagram/buttonPage.dart/search_page.dart';
import 'package:instagram/buttonPage.dart/shop_page.dart';

import '../widgets/view_page.dart';

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> Pages = [
    ViewPage(),
    Search(),
    Movie(),
    Cart(),
    profile(),
  ];

  int _CurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: Pages,
        index: _CurrentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
          currentIndex: _CurrentIndex,
          
          onTap: (index) => setState(() {
                _CurrentIndex = index;
              }),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "home"),
            BottomNavigationBarItem(icon: Icon(FeatherIcons.search),label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.movie_filter_outlined),label: "movies"),
            BottomNavigationBarItem(icon: Icon(FeatherIcons.shoppingBag),label: "cart"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "profile")
            ]),
    );
  }
}
