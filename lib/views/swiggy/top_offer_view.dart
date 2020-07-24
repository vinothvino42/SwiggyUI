import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';

class TopOffersViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 330.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.security),
              UIHelper.horizontalSpaceExtraSmall(),
              Text(
                'Top Offers',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontSize: 20.0),
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  Text(
                    'SEE ALL',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  UIHelper.horizontalSpaceExtraSmall(),
                  ClipOval(
                    child: Container(
                      alignment: Alignment.center,
                      color: swiggyOrange,
                      height: 25.0,
                      width: 25.0,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          UIHelper.verticalSpaceExtraSmall(),
          Text(
            'Get 20-50% Off',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.grey),
          ),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _buildSpotlightFoodListItem(context),
                    _buildSpotlightFoodListItem(context),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _buildSpotlightFoodListItem(BuildContext context) => Container(
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
