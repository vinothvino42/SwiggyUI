import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'shared/app_theme.dart';
import 'views/home_bottom_navigation_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwiggyUI',
      debugShowCheckedModeBanner: false,
      theme: appPrimaryTheme(),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: HomeBottomNavigationScreen(),
    );
  }
}
