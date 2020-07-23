import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/custom_divider_view.dart';

class AccountScreen extends StatelessWidget {
  final List<String> titles = [
    'My Account',
    'SUPER Expired',
    'Swiggy Money',
    'Help',
  ];
  final List<String> body = [
    'Address, Payments, Favourties, Referrals & Offers',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _AppBar(),
            _ListItem(
              title: 'My Account',
              body: 'Address, Payments, Favourites' 'Referrals & Offers',
            ),
            _ListItem(
              title: 'My Account',
              body: 'Address, Payments, Favourites' 'Referrals & Offers',
            ),
            _ListItem(
              title: 'My Account',
              body: 'Address, Payments, Favourites' 'Referrals & Offers',
            ),
            _ListItem(
              title: 'My Account',
              body: 'Address, Payments, Favourites' 'Referrals & Offers',
            )
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final subtitleStyle = Theme.of(context).textTheme.bodyText1;

    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'VINOTH',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              InkWell(
                child: Text(
                  'EDIT',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 17.0, color: darkOrange),
                ),
                onTap: () {},
              )
            ],
          ),
          UIHelper.verticalSpaceSmall(),
          Row(
            children: <Widget>[
              Text('8870123456', style: subtitleStyle),
              UIHelper.horizontalSpaceSmall(),
              ClipOval(
                child: Container(
                  height: 3.0,
                  width: 3.0,
                  color: Colors.grey[700],
                ),
              ),
              UIHelper.horizontalSpaceSmall(),
              Text('vinothvino@icloud.com', style: subtitleStyle)
            ],
          ),
          UIHelper.verticalSpaceLarge(),
          CustomDividerView(
            dividerHeight: 1.8,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  final String title;
  final String body;

  const _ListItem({
    Key key,
    @required this.title,
    @required this.body,
  })  : assert(title != '', body != ''),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      height: 100.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontSize: 17.0),
              ),
              UIHelper.verticalSpaceExtraSmall(),
              Text(
                body,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 14.0, color: Colors.black),
              ),
            ],
          ),
          Spacer(),
          UIHelper.horizontalSpaceSmall(),
          Icon(Icons.keyboard_arrow_right)
        ],
      ),
    );
  }
}
