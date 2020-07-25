import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';

class GenieGroceryCardView extends StatelessWidget {
  final String title;
  final String image;
  final String subtitle;

  const GenieGroceryCardView({
    Key key,
    @required this.title,
    @required this.image,
    @required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            padding: const EdgeInsets.only(top: 8.0),
            height: 150.0,
            decoration: BoxDecoration(
              color: swiggyOrange,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0,
                  offset: Offset(1, 4),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Colors.white),
                ),
                UIHelper.verticalSpaceSmall(),
                Flexible(
                  child: Image.asset(
                    image,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ),
        UIHelper.verticalSpaceMedium(),
        Text(subtitle, textAlign: TextAlign.center),
      ],
    );
  }
}
