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
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: isTab ? 20.0 : 40.0, top: 40.0, right: isTab ? 20.0 : 40.0, bottom: 20.0),
        child: Column(
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
                : FractionallySizedBox(
                    widthFactor: 0.5,
                    child: SizedBox(
                      height: 52.0,
                      child: OutlinedButton.icon(
                        icon: Icon(Icons.exit_to_app),
                        label: Text('Logout'),
                        onPressed: () => print("it's pressed"),
                        style: ElevatedButton.styleFrom(
                          onPrimary: swiggyOrange,
                          side: BorderSide(width: 2.0, color: swiggyOrange),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
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
      alignment: Alignment.center,
      margin: isTab ? EdgeInsets.zero : const EdgeInsets.symmetric(vertical: 5.0),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: isTab ? 0.0 : 10.0),
      child: InkWell(
        onTap: () {
          print('Tapped');
        },
        onHover: (value) {
          if (!isTab) {
            setState(() {
              isHovered = value;
            });
          }
        },
        child: Container(
          decoration: isHovered
              ? BoxDecoration(
                  color: Colors.deepOrange[100],
                  borderRadius: BorderRadius.circular(30.0),
                )
              : null,
          padding: isTab
              ? const EdgeInsets.symmetric(vertical: 10.0)
              : const EdgeInsets.only(left: 15.0, top: 10.0, right: 25.0, bottom: 10.0),
          child: isTab
              ? IconButton(
                  icon: Icon(widget.menu.icon, color: isHovered ? swiggyOrange : Colors.black),
                  iconSize: 30.0,
                  onPressed: () {},
                )
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
