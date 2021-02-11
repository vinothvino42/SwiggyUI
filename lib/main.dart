import 'package:flutter/material.dart';

import 'shared/app_theme.dart';
import 'views/home_bottom_navigation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwiggyUI',
      debugShowCheckedModeBanner: false,
      theme: appPrimaryTheme(),
      home: HomeBottomNavigationScreen(),
    );
  }
}
