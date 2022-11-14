import 'package:flutter/material.dart';

import 'colors.dart';

PreferredSizeWidget appbar() {
  return AppBar(
    elevation: 0,
    title: const Icon(
      Icons.menu,
      size: 27,
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 15),
        child: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage('images/p3.jpg'),
        ),
      ),
    ],
    backgroundColor: maincolor,
  );
}
