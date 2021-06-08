import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/all_restaurant.dart';
import 'package:swiggy_ui/models/indian_food.dart';
import 'package:swiggy_ui/models/spotlight_best_top_food.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/custom_divider_view.dart';
import 'package:swiggy_ui/widgets/mobile/search_food_list_item_view.dart';

import '../groceries/grocery_screen.dart';
import '../indian_food/indian_delight_screen.dart';
import '../offers/offer_screen.dart';

class AllRestaurantsScreen extends StatelessWidget {
  final restaurantListOne = AllRestaurant.getRestaurantListOne();
  final restaurantListTwo = AllRestaurant.getRestaurantListTwo();
  final restaurantListThree = AllRestaurant.getRestaurantListThree();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildAppBar(context),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _FoodHorizontalListView(),
                    _CategoriesView(),
                    GroceryListView(
                      title: 'ALL RESTAURANTS',
                    ),
                    _RestaurantHorizontalListView(
                      title: 'Indian Restaurants',
                      restaurants: AllRestaurant.getIndianRestaurants(),
                    ),
                    _RestaurantListView(
                      restaurants: restaurantListOne,
                    ),
                    _RestaurantHorizontalListView(
                      title: 'Popular Brands',
                      restaurants: AllRestaurant.getPopularBrands(),
                    ),
                    _RestaurantListView(
                      restaurants: restaurantListTwo,
                    ),
                    _LargeRestaurantBannerView(
                      title: 'BEST IN SAFETY',
                      desc: 'SAFEST RESTAURANTS WITH BEST IN CLASS\nSAFETY STANDARDS',
                      restaurants: LargeRestaurantBanner.getBestInSafetyRestaurants(),
                    ),
                    _RestaurantListView(
                      restaurants: restaurantListOne,
                    ),
                    _LargeRestaurantBannerView(
                      title: 'PEPSI SAVE OUR RESTAURANTS',
                      desc: 'ORDER ANY SOFT DRINK & PEPSI WILL DONATE A\NMEAL TO A RESTAURANT WORKER',
                      restaurants: LargeRestaurantBanner.getPepsiSaveOurRestaurants(),
                    ),
                    _RestaurantListView(
                      restaurants: restaurantListThree,
                    ),
                    _RestaurantHorizontalListView(
                      title: 'Popular Brands',
                      restaurants: AllRestaurant.getPopularBrands(),
                    ),
                    _RestaurantListView(
                      restaurants: restaurantListOne,
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }

  Container _buildAppBar(BuildContext context) => Container(
        margin: const EdgeInsets.only(left: 5.0, right: 15.0),
        height: 60.0,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            UIHelper.horizontalSpaceSmall(),
            Text(
              'Now',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontSize: 18.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            UIHelper.horizontalSpaceSmall(),
            Container(
              alignment: Alignment.center,
              height: 25.0,
              width: 25.0,
              decoration: BoxDecoration(
                border: Border.all(width: 1.3),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Icon(Icons.arrow_forward_ios, size: 13.0),
            ),
            UIHelper.horizontalSpaceSmall(),
            Text(
              'Other',
              style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 21.0),
            ),
            UIHelper.horizontalSpaceExtraSmall(),
            Spacer(),
            Icon(Icons.local_offer),
            UIHelper.horizontalSpaceExtraSmall(),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Offer',
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 18.0),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OffersScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      );
}

class _FoodHorizontalListView extends StatelessWidget {
  final restaurants = AllRestaurant.getPopularBrands();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: <Widget>[
              Image.asset(
                restaurants[index].image,
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2,
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
                color: Colors.white,
                child: Text('TRY NOW'),
              ),
              Positioned(
                bottom: 1.0,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  height: 70.0,
                  color: Colors.black38,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    restaurants[index].name,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoriesView extends StatelessWidget {
  final categories = AllRestaurant.getPopularTypes();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 115.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            width: 60.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    height: 40.0,
                    color: Colors.grey[200],
                  ),
                ),
                Positioned(
                  top: 20.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        categories[index].image,
                        height: 30.0,
                        width: 30.0,
                        fit: BoxFit.cover,
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Flexible(
                        child: Text(
                          categories[index].name,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13.0),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class _RestaurantHorizontalListView extends StatelessWidget {
  final String title;
  final List<IndianFood> restaurants;

  const _RestaurantHorizontalListView({
    Key? key,
    required this.title,
    required this.restaurants,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: 180.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomDividerView(dividerHeight: 1.0, color: Colors.black),
          UIHelper.verticalSpaceSmall(),
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 18.0),
          ),
          UIHelper.verticalSpaceSmall(),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: restaurants.length,
              itemBuilder: (context, index) => InkWell(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipOval(
                        child: Image.asset(
                          restaurants[index].image,
                          height: 80.0,
                          width: 80.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      UIHelper.verticalSpaceExtraSmall(),
                      Text(
                        restaurants[index].name,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.grey[700]),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IndianDelightScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
          UIHelper.verticalSpaceSmall(),
          CustomDividerView(dividerHeight: 1.0, color: Colors.black),
        ],
      ),
    );
  }
}

class _RestaurantListView extends StatelessWidget {
  const _RestaurantListView({
    Key? key,
    required this.restaurants,
  }) : super(key: key);

  final List<SpotlightBestTopFood> restaurants;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: restaurants.length,
        itemBuilder: (context, index) => SearchFoodListItemView(
          food: restaurants[index],
        ),
      ),
    );
  }
}

class _LargeRestaurantBannerView extends StatelessWidget {
  const _LargeRestaurantBannerView({
    Key? key,
    required this.title,
    required this.desc,
    required this.restaurants,
  }) : super(key: key);

  final String title;
  final String desc;
  final List<LargeRestaurantBanner> restaurants;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      color: Colors.blueGrey[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          UIHelper.verticalSpaceMedium(),
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 18.0),
          ),
          UIHelper.verticalSpaceSmall(),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.grey,
                  fontSize: 12.0,
                ),
          ),
          UIHelper.verticalSpaceSmall(),
          LimitedBox(
            maxHeight: 310.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: restaurants.length,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(10.0),
                width: 160.0,
                child: Column(
                  children: <Widget>[
                    UIHelper.verticalSpaceMedium(),
                    Image.asset(
                      restaurants[index].image,
                      height: 160.0,
                      fit: BoxFit.cover,
                    ),
                    UIHelper.verticalSpaceMedium(),
                    Text(
                      restaurants[index].title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                          ),
                    ),
                    UIHelper.verticalSpaceMedium(),
                    Container(
                      height: 2.0,
                      width: 50.0,
                      color: Colors.grey[400],
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Text(
                      restaurants[index].subtitle,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
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
