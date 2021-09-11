import 'package:flutter/material.dart';

import 'cart_view.dart';
import 'home_view.dart';
import 'menu_view.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MenuView(),
          HomeView(),
          CartView(),
        ],
      ),
    );
  }
}
