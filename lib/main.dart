import 'package:flutter/material.dart';
import 'package:swiggy_ui/shared/app_theme.dart';

import 'views/swiggy_screen.dart';

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
      home: SwiggyScreen(),
    );
  }
}
