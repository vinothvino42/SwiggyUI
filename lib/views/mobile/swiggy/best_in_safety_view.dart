import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/spotlight_best_top_food.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/mobile/spotlight_best_top_food_item.dart';
import 'package:swiggy_ui/widgets/responsive.dart';

class BestInSafetyViews extends StatelessWidget {
  final restaurants = SpotlightBestTopFood.getBestRestaurants();

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);
    final customWidth = MediaQuery.of(context).size.width / (isTabletDesktop ? 3.8 : 1.1);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.security),
                    UIHelper.horizontalSpaceExtraSmall(),
                    Text(
                      'Best in Safety',
                      style: Theme.of(context).textTheme.headline4.copyWith(fontSize: 20.0),
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        Text(
                          'SEE ALL',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold),
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
                  'Restaurants with best safety standards',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
          UIHelper.verticalSpaceMedium(),
          LimitedBox(
            maxHeight: 270.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: restaurants.length,
              itemBuilder: (context, index) => Container(
                width: customWidth,
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
}
