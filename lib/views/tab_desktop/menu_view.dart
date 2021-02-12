import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/tab_desktop/menu.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menus = Menu.getMenus();

    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.topRight,
        child: ListView.builder(
          itemCount: menus.length,
          itemBuilder: (context, index) => Container(
            color: Colors.green,
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: InkWell(
              onTap: () {
                print('Tapped');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  menus[index].icon,
                  UIHelper.horizontalSpaceMedium(),
                  Text(menus[index].title, style: Theme.of(context).textTheme.headline6),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
