import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';

import 'genie_grocery_card_view.dart';

class FoodGroceriesAvailabilityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
                child: Container(
                  width: 10.0,
                  height: 140.0,
                  color: swiggyOrange,
                ),
              ),
              UIHelper.horizontalSpaceMedium(),
              Flexible(
                child: Column(
                  children: <Widget>[
                    Text(
                      'We are now deliverying food groceries and other essentials.',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Text(
                      'Food & Genie service (Mon-Sat)-6:00 am to 9:00pm. Groceries & Meat (Mon-Sat)-6:00 am to 6:00pm. Dairy (Mon-Sat)-6:00 am to 6:00pm (Sun)-6:00 am to 12:00 pm',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 16.0,
                            color: Colors.grey[800],
                          ),
                    )
                  ],
                ),
              )
            ],
          ),
          UIHelper.verticalSpaceLarge(),
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: 150.0,
                  color: swiggyOrange,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Restaurants',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(color: Colors.white),
                            ),
                            UIHelper.verticalSpaceExtraSmall(),
                            Text(
                              'No-contact delivery available',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 45.0,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        color: darkOrange,
                        child: Row(
                          children: <Widget>[
                            Text(
                              'View all',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                      color: Colors.white, fontSize: 18.0),
                            ),
                            UIHelper.horizontalSpaceSmall(),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -5.0,
                right: -10.0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/food1.jpg',
                    width: 160.0,
                    height: 160.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GenieGroceryCardView(
                title: 'Genie',
                subtitle: 'Anything you need, delivered',
                image: 'assets/images/food1.jpg',
              ),
              GenieGroceryCardView(
                title: 'Grocery',
                subtitle: 'Esentials delivered in 2 Hrs',
                image: 'assets/images/food4.jpg',
              ),
              GenieGroceryCardView(
                title: 'Meat',
                subtitle: 'Fesh meat delivered safe',
                image: 'assets/images/food6.jpg',
              ),
            ],
          )
        ],
      ),
    );
  }
}
