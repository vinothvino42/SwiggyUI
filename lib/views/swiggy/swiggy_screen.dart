import 'package:flutter/material.dart';

import '../../utils/ui_helper.dart';
import '../../widgets/custom_divider_view.dart';
import 'best_in_safety_view.dart';
import 'food_groceries_availability_view.dart';
import 'genie_view.dart';
import 'in_the_spotlight_view.dart';
import 'indian_food_view.dart';
import 'offer_banner_view.dart';
import 'popular_brand_view.dart';
import 'popular_categories_view.dart';
import 'restaurant_vertical_list_view.dart';
import 'swiggy_safety_banner_view.dart';
import 'top_offer_view.dart';
import 'top_picks_for_you_view.dart';

class SwiggyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              _buildAppBar(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FoodGroceriesAvailabilityView(),
                      TopPicksForYouView(),
                      OfferBannerView(),
                      CustomDividerView(),
                      IndianFoodView(),
                      CustomDividerView(),
                      InTheSpotlightView(),
                      CustomDividerView(),
                      PopularBrandsView(),
                      CustomDividerView(),
                      SwiggySafetyBannerView(),
                      BestInSafetyViews(),
                      CustomDividerView(),
                      TopOffersViews(),
                      CustomDividerView(),
                      GenieView(),
                      CustomDividerView(),
                      PopularCategoriesView(),
                      CustomDividerView(),
                      RestaurantVerticalListView(
                        title: 'Popular Restaurants',
                        count: 3,
                      ),
                      CustomDividerView(),
                      RestaurantVerticalListView(
                        title: 'All Restaurants Nearby',
                        count: 5,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildAppBar(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        height: 60.0,
        child: Row(
          children: <Widget>[
            Text(
              'Other',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(fontSize: 21.0),
            ),
            UIHelper.horizontalSpaceExtraSmall(),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Icon(Icons.keyboard_arrow_down),
            ),
            Spacer(),
            Icon(Icons.local_offer),
            UIHelper.horizontalSpaceExtraSmall(),
            Text(
              'Offer',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(fontSize: 18.0),
            ),
          ],
        ),
      );
}
