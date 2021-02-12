import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key, this.expandFlex = 4}) : super(key: key);

  final int expandFlex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: expandFlex,
      child: Container(
        color: Colors.white,
      ),
    );
  }
}
