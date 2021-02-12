import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Menu {
  const Menu({
    @required this.icon,
    @required this.title,
  });

  final Icon icon;
  final String title;

  static List<Menu> getMenus() {
    return const [
      Menu(
        icon: Icon(Icons.home_outlined),
        title: 'Home',
      ),
      Menu(
        icon: Icon(Icons.search),
        title: 'Search',
      ),
      Menu(
        icon: Icon(Icons.shopping_bag_outlined),
        title: 'Orders',
      ),
      Menu(
        icon: Icon(Icons.shopping_bag_outlined),
        title: 'Offers',
      ),
      Menu(
        icon: Icon(Icons.person_outline),
        title: 'Profile',
      ),
      Menu(
        icon: Icon(Icons.more_horiz),
        title: 'More',
      ),
    ];
  }
}
