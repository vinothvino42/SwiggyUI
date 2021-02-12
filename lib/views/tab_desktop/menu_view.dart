import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/tab_desktop/menu.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key key, this.expandFlex = 2, this.isTab = false}) : super(key: key);

  final int expandFlex;
  final bool isTab;

  @override
  Widget build(BuildContext context) {
    final menus = Menu.getMenus();

    return Expanded(
      flex: expandFlex,
      child: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(left: 40.0, top: 40.0, right: 40.0, bottom: 20.0),
        color: Colors.grey[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView(
              shrinkWrap: true,
              children: List.generate(
                menus.length,
                (index) => _MenuItem(
                  menu: menus[index],
                  isTab: isTab,
                ),
              ),
            ),
            Spacer(),
            isTab
                ? IconButton(
                    icon: Icon(Icons.exit_to_app),
                    iconSize: 30.0,
                    onPressed: () {},
                  )
                : SizedBox(
                    height: 50.0,
                    width: 150.0,
                    child: ElevatedButton(
                      child: Text('Logout'),
                      onPressed: () => print("it's pressed"),
                      style: ElevatedButton.styleFrom(
                        primary: swiggyOrange,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

class _MenuItem extends StatefulWidget {
  const _MenuItem({Key key, @required this.menu, this.isTab = false}) : super(key: key);

  final Menu menu;
  final bool isTab;

  @override
  __MenuItemState createState() => __MenuItemState();
}

class __MenuItemState extends State<_MenuItem> {
  bool isHovered = false;
  bool get isTab => widget.isTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: InkWell(
        onTap: () {
          print('Tapped');
        },
        onHover: (value) {
          setState(() {
            isHovered = value;
          });
        },
        child: Container(
          decoration: isHovered
              ? BoxDecoration(
                  color: Colors.deepOrange[100],
                  borderRadius: BorderRadius.circular(30.0),
                )
              : null,
          padding: isTab
              ? const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0)
              : const EdgeInsets.only(left: 15.0, top: 10.0, right: 25.0, bottom: 10.0),
          child: isTab
              ? Icon(widget.menu.icon, color: isHovered ? swiggyOrange : Colors.black, size: 30.0)
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(widget.menu.icon, color: isHovered ? swiggyOrange : Colors.black, size: 30.0),
                    UIHelper.horizontalSpaceMedium(),
                    Text(
                      widget.menu.title,
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            color: isHovered ? swiggyOrange : Colors.black,
                          ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
