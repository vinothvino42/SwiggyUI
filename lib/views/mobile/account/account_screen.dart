import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/custom_divider_view.dart';
import 'package:swiggy_ui/widgets/dotted_seperator_view.dart';

class AccountScreen extends StatelessWidget {
  final List<String> titles = [
    'My Account',
    'SUPER Expired',
    'Swiggy Money',
    'Help',
  ];
  final List<String> body = [
    'Address, Payments, Favourties, Referrals & Offers',
    'You had a great savings run. Get SUPER again',
    'Balance & Transactions',
    'FAQ & Links',
  ];

  AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _AppBar(),
              ListView.builder(
                shrinkWrap: true,
                itemCount: titles.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => _ListItem(
                  title: titles[index],
                  body: body[index],
                  isLastItem: (titles.length - 1) == index,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 15.0),
                height: 50.0,
                color: Colors.grey[200],
                child: Text(
                  'PAST ORDERS',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Colors.grey[700], fontSize: 12.0),
                ),
              ),
              _PastOrderListView(),
            ],
          ),
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
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              InkWell(
                child: Text(
                  'EDIT',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
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
          const CustomDividerView(
            dividerHeight: 1.8,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({
    Key? key,
    required this.title,
    required this.body,
    this.isLastItem = false,
  })  : assert(title != '', body != ''),
        super(key: key);

  final String title;
  final String body;
  final bool isLastItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 15.0),
                    ),
                    UIHelper.verticalSpaceExtraSmall(),
                    Text(
                      body,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 13.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              UIHelper.horizontalSpaceSmall(),
              const Icon(Icons.keyboard_arrow_right)
            ],
          ),
          UIHelper.verticalSpaceLarge(),
          isLastItem
              ? const SizedBox()
              : const CustomDividerView(
                  dividerHeight: 0.8,
                  color: Colors.black26,
                ),
        ],
      ),
    );
  }
}

class _PastOrderListView extends StatelessWidget {
  final List<String> restaurants = [
    'Sea Emperor',
    'Fireflies Restaurant',
    'Chai Truck',
  ];

  final List<String> foods = [
    'Pepper BBQ x 1',
    'Chicken Noodles x 1',
    'Milk Tea x 1',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          itemCount: restaurants.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => _PastOrdersListItemView(
            restaurant: restaurants[index],
            foodItem: foods[index],
          ),
        ),
        TextButton(
          child: Text(
            'VIEW MORE ORDERS',
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: darkOrange),
          ),
          onPressed: () {},
        ),
        UIHelper.verticalSpaceSmall(),
        const CustomDividerView(),
        Row(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10.0),
              height: 50.0,
              child: Text(
                'LOGOUT',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontSize: 16.0),
              ),
            ),
            const Spacer(),
            const Icon(Icons.power_settings_new),
            UIHelper.horizontalSpaceSmall(),
          ],
        ),
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 20.0),
          height: 130.0,
          color: Colors.grey[200],
          child: Text(
            'App Version v3.2.0',
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.grey[700], fontSize: 13.0),
          ),
        )
      ],
    );
  }
}

class _PastOrdersListItemView extends StatelessWidget {
  const _PastOrdersListItemView({
    Key? key,
    required this.restaurant,
    required this.foodItem,
  })  : assert(restaurant != '', foodItem != ''),
        super(key: key);

  final String restaurant;
  final String foodItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      restaurant,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    UIHelper.verticalSpaceExtraSmall(),
                    Text(
                      'Medavakkam',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12.0),
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Row(
                      children: <Widget>[
                        const Text('Rs112'),
                        UIHelper.horizontalSpaceExtraSmall(),
                        Icon(Icons.keyboard_arrow_right,
                            color: Colors.grey[600])
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Text('Delivered', style: Theme.of(context).textTheme.subtitle2),
                UIHelper.horizontalSpaceSmall(),
                ClipOval(
                  child: Container(
                    padding: const EdgeInsets.all(2.2),
                    color: Colors.green,
                    child: const Icon(Icons.check,
                        color: Colors.white, size: 14.0),
                  ),
                )
              ],
            ),
          ),
          UIHelper.verticalSpaceSmall(),
          const DottedSeperatorView(),
          UIHelper.verticalSpaceMedium(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(foodItem),
              UIHelper.verticalSpaceExtraSmall(),
              const Text('July 14, 2:11 AM'),
              UIHelper.verticalSpaceSmall(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 1.5, color: darkOrange!),
                          ),
                          child: Text(
                            'REORDER',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(color: darkOrange),
                          ),
                          onPressed: () {},
                        ),
                        UIHelper.verticalSpaceMedium(),
                        const Text(
                          'Delivery rating not\napplicable for this order',
                          maxLines: 2,
                        )
                      ],
                    ),
                  ),
                  UIHelper.horizontalSpaceMedium(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              width: 1.5,
                              color: Colors.black,
                            ),
                          ),
                          child: Text(
                            'RATE FOOD',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(color: Colors.black),
                          ),
                          onPressed: () {},
                        ),
                        UIHelper.verticalSpaceMedium(),
                        const Text("You haven't rated\nthis food yet")
                      ],
                    ),
                  )
                ],
              ),
              UIHelper.verticalSpaceMedium(),
              const CustomDividerView(dividerHeight: 1.5, color: Colors.black)
            ],
          )
        ],
      ),
    );
  }
}
