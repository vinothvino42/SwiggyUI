import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/spotlight_best_top_food.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/views/mobile/swiggy/best_in_safety_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/food_groceries_availability_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/in_the_spotlight_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/offers/offer_banner_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/popular_brand_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/popular_categories_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/restaurants/restaurant_vertical_list_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/swiggy_safety_banner_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/swiggy_screen.dart';
import 'package:swiggy_ui/views/mobile/swiggy/top_offer_view.dart';
import 'package:swiggy_ui/widgets/custom_divider_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key, this.expandFlex = 4}) : super(key: key);

  final int expandFlex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: expandFlex,
      child: Container(
        padding: EdgeInsets.only(top: 40.0, bottom: 20.0),
        color: Colors.grey[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Search(),
            _Body(),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OfferBannerView(),
            PopularBrandsView(),
            CustomDividerView(),
            InTheSpotlightView(),
            CustomDividerView(),
            PopularCategoriesView(),
            CustomDividerView(),
            SwiggySafetyBannerView(),
            BestInSafetyViews(),
            CustomDividerView(),
            TopOffersViews(),
            CustomDividerView(),
            FoodGroceriesAvailabilityView(),
            CustomDividerView(),
            RestaurantVerticalListView(
              title: 'Popular Restaurants',
              restaurants: SpotlightBestTopFood.getPopularAllRestaurants(),
            ),
            CustomDividerView(),
            RestaurantVerticalListView(
              title: 'All Restaurants Nearby',
              restaurants: SpotlightBestTopFood.getPopularAllRestaurants(),
              isAllRestaurantNearby: true,
            ),
            SeeAllRestaurantBtn(),
            LiveForFoodView()
          ],
        ),
      ),
    );
  }
}

class _Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0),
          )
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.search_outlined),
          UIHelper.horizontalSpaceMedium(),
          Expanded(
            child: Text(
              'What would you like to eat?',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          UIHelper.horizontalSpaceMedium(),
          Icon(Icons.filter_list_outlined)
        ],
      ),
    );
  }
}
