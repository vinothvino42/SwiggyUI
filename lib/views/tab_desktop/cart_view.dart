import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';

class CartView extends StatelessWidget {
  const CartView({Key key, this.isTab = false}) : super(key: key);

  final bool isTab;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.grey[50],
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: isTab ? 20.0 : 40.0, top: 40.0, right: isTab ? 20.0 : 40.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 18.0),
            ),
            UIHelper.verticalSpaceMedium(),
            _Address(),
          ],
        ),
      ),
    );
  }
}

class _Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivery address',
            style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.grey[500], fontWeight: FontWeight.bold),
          ),
          UIHelper.verticalSpaceSmall(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2/145 South Street',
                style: Theme.of(context).textTheme.headline6,
              ),
              Icon(Icons.keyboard_arrow_down_sharp, size: 28.0)
            ],
          ),
          UIHelper.verticalSpaceSmall(),
          Row(
            children: [
              Icon(Icons.timer_outlined, color: Colors.grey, size: 17.0),
              UIHelper.horizontalSpaceSmall(),
              Text(
                '42 mins',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
              ),
              UIHelper.horizontalSpaceLarge(),
              Icon(Icons.location_on, color: Colors.grey, size: 17.0),
              UIHelper.horizontalSpaceSmall(),
              Text(
                '4 kms',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
