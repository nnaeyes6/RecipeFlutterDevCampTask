// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: depend_on_referenced_packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:recipe_app_devcamp/my_recipe_home.dart';
import 'package:recipe_app_devcamp/navbar/favorite.dart';
import 'package:recipe_app_devcamp/navbar/ingredients_page.dart';

class BottonNavigationBarPage extends StatefulWidget {
  const BottonNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottonNavigationBarPage> createState() =>
      _BottonNavigationBarPageState();
}

class _BottonNavigationBarPageState extends State<BottonNavigationBarPage> {
  final screens = [
    const MyRecipeHome(),
    const IngredientsPage(),
    const FavoritesPage(),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    final items = [
      Column(
        children: const [
          Icon(
            Icons.home,
            size: 24,
          ),
          Text(
            "Home",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ],
      ),
      Column(
        children: const [
          Icon(
            Icons.free_breakfast,
            size: 24,
          ),
          Text(
            "cook",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ],
      ),
      Column(
        children: const [
          Icon(
            Icons.favorite,
            size: 24,
          ),
          Text(
            "Favorite",
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
          ),
        ],
      ),
    ];
    return ClipRRect(
      child: Scaffold(
        extendBody: true,
        body: screens[index],
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.grey.shade200,
          items: items,
          height: 40,
          index: index,
          buttonBackgroundColor: Colors.yellowAccent.shade700,
          backgroundColor: Colors.grey.shade200,
          onTap: (index) => setState(() {
            this.index = index;
          }),
        ),
      ),
    );
  }
}
