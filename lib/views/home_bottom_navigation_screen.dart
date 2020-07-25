import 'package:flutter/material.dart';
import 'package:swiggy_ui/views/swiggy/meat/meat_screen.dart';

import '../utils/app_colors.dart';
import 'account/account_screen.dart';
import 'cart/cart_screen.dart';
import 'search/search_screen.dart';
import 'swiggy/genie/genie_screen.dart';
import 'swiggy/groceries/grocery_screen.dart';
import 'swiggy/offers/offer_screen.dart';
import 'swiggy/swiggy_screen.dart';

class HomeBottomNavigationScreen extends StatefulWidget {
  @override
  _HomeBottomNavigationScreenState createState() =>
      _HomeBottomNavigationScreenState();
}

class _HomeBottomNavigationScreenState
    extends State<HomeBottomNavigationScreen> {
  final List<Widget> _children = [
    SwiggyScreen(),
    SearchScreen(),
    CartScreen(),
    AccountScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final labelTextStyle =
        Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 11.0);
    return Scaffold(
      body: _children[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: darkOrange,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        selectedLabelStyle: labelTextStyle,
        unselectedLabelStyle: labelTextStyle,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('SWIGGY'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('SEARCH'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text('CART'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('ACCOUNT'),
          ),
        ],
      ),
    );
  }
}
