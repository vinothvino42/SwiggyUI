import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/spotlight_best_top_food.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/spotlight_best_top_food_item.dart';

class InTheSpotlightView extends StatelessWidget {
  final restaurants = SpotlightBestTopFood.getSpotlightRestaurants();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: 340.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          UIHelper.verticalSpaceSmall(),
          _buildSpotlightHeaderView(context),
          UIHelper.verticalSpaceMedium(),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: restaurants.length,
              itemBuilder: (context, index) => Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SpotlightBestTopFoodItem(restaurant: restaurants[index][0]),
                    SpotlightBestTopFoodItem(restaurant: restaurants[index][1])
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _buildSpotlightHeaderView(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.shopping_basket, size: 20.0),
                UIHelper.horizontalSpaceSmall(),
                Text(
                  'In the Spotlight!',
                  style: Theme.of(context).textTheme.headline4.copyWith(fontSize: 20.0),
                )
              ],
            ),
            UIHelper.verticalSpaceExtraSmall(),
            Text(
              'Explore sponsored partner brands',
              style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.grey),
            ),
          ],
        ),
      );
}
