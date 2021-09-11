import 'package:flutter/material.dart';

import 'home_view.dart';
import 'menu_view.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MenuView(isTab: true, expandFlex: 1),
          HomeView(expandFlex: 5),
        ],
      ),
    );
  }
}
