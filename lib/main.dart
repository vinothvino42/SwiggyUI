import 'package:flutter/material.dart';
import 'package:swiggy_ui/views/tab_desktop/tab_screen.dart';

import 'shared/app_theme.dart';
import 'views/tab_desktop/desktop_screen.dart';
import 'views/mobile/mobile_screen.dart';
import 'widgets/responsive.dart';

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
      home: Responsive(
        mobile: MobileScreen(),
        tablet: TabScreen(),
        desktop: DesktopScreen(),
      ),
    );
  }
}
