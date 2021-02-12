import 'package:flutter/material.dart';

import 'cart_view.dart';
import 'home_view.dart';
import 'menu_view.dart';

class DesktopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MenuView(),
            HomeView(),
            CartView(),
          ],
        ),
      ),
    );
  }
}
