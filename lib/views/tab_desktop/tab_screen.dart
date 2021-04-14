import 'package:flutter/material.dart';

import 'home_view.dart';
import 'menu_view.dart';

class TabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MenuView(isTab: true, expandFlex: 1),
            HomeView(expandFlex: 5),
          ],
        ),
      ),
    );
  }
}
