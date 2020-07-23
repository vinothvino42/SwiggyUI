import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';

class FoodListItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                )
              ],
            ),
            child: Image.asset(
              'assets/images/food2.jpg',
              height: 100.0,
              width: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          UIHelper.horizontalSpaceSmall(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Breakfast Express',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(fontSize: 18.0),
              ),
              Text('Continental, North Indian, South Indian',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.grey[800], fontSize: 13.5)),
              UIHelper.verticalSpaceSmall(),
              Text(
                '20 % off | Use JUMBO',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.red[900], fontSize: 13.0),
              ),
              UIHelper.verticalSpaceExtraSmall(),
              Divider(),
              UIHelper.verticalSpaceExtraSmall(),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    size: 14.0,
                    color: Colors.grey[600],
                  ),
                  Text('4.1 - 45 mins - Rs200 for two')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
