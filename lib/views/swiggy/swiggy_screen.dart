import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../utils/app_colors.dart';
import '../../utils/ui_helper.dart';
import '../../widgets/custom_divider_view.dart';
import '../../widgets/dotted_seperator_view.dart';
import '../../widgets/food_list_item_view.dart';

import 'food_groceries_availability_view.dart';
import 'genie_grocery_card_view.dart';
import 'indian_food_view.dart';
import 'offer_banner_view.dart';
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
                      _InTheSpotlightView(),
                      CustomDividerView(),
                      _PopularBrandsView(),
                      CustomDividerView(),
                      _SwiggySafetyBannerView(),
                      _BestInSafetyViews(),
                      CustomDividerView(),
                      _TopOffersViews(),
                      CustomDividerView(),
                      _GenieView(),
                      CustomDividerView(),
                      PopularCategorieView(),
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

class _InTheSpotlightView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: 330.0,
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
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontSize: 20.0),
                )
              ],
            ),
            UIHelper.verticalSpaceExtraSmall(),
            Text(
              'Explore sponsored partner brands',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.grey),
            ),
          ],
        ),
      );

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

class _PopularBrandsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.0,
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          UIHelper.verticalSpaceSmall(),
          _buildPopularHeader(context),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(right: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[300],
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/food3.jpg',
                            height: 80.0,
                            width: 80.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        'Chai Kings',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      UIHelper.verticalSpace(2.0),
                      Text(
                        '34 mins',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Colors.grey, fontSize: 13.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _buildPopularHeader(BuildContext context) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Popular Brands',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(fontSize: 20.0),
            ),
            UIHelper.verticalSpaceExtraSmall(),
            Text(
              'Most ordered from around your locality',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.grey),
            ),
          ],
        ),
      );
}

class _SwiggySafetyBannerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: 200.0,
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.arrow_downward,
                color: swiggyOrange,
              ),
              UIHelper.horizontalSpaceExtraSmall(),
              Flexible(
                child: Text(
                  "SWIGGY's KEY MEASURES TO ENSURE SAFETY",
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: swiggyOrange,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              UIHelper.horizontalSpaceExtraSmall(),
              Icon(
                Icons.arrow_downward,
                color: swiggyOrange,
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(right: 10.0),
                padding: const EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  border: Border.all(color: swiggyOrange, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'No-contact Delivery',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                UIHelper.verticalSpaceExtraSmall(),
                                Text(
                                  'Have your order dropped of at your door or gate for added safety',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ],
                            ),
                          ),
                          UIHelper.verticalSpaceExtraSmall(),
                          FlatButton(
                            child: Text(
                              'Know More',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(color: darkOrange),
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    UIHelper.horizontalSpaceSmall(),
                    ClipOval(
                      child: Image.asset(
                        'assets/images/food3.jpg',
                        height: 90.0,
                        width: 90.0,
                      ),
                    )
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

class _BestInSafetyViews extends StatelessWidget {
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
                'Best in Safety',
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
            'Restaurants with best safety standards',
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

class _TopOffersViews extends StatelessWidget {
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

class _GenieView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Genie', style: Theme.of(context).textTheme.headline4),
                  UIHelper.verticalSpaceSmall(),
                  Text(
                    'Anything you need, deliverd.\nPick-up, Drop or Buy anything,\nfrom anywhere in your city',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.grey),
                  )
                ],
              ),
              Spacer(),
              UIHelper.horizontalSpaceMedium(),
              Image.asset(
                'assets/images/food2.jpg',
                height: 90.0,
                width: 90.0,
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          DottedSeperatorView(),
          UIHelper.verticalSpaceMedium(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildGenieCardView(context),
              _buildGenieCardView(context)
            ],
          )
        ],
      ),
    );
  }

  Container _buildGenieCardView(BuildContext context) => Container(
        padding: const EdgeInsets.only(left: 10.0, top: 10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[200],
              blurRadius: 2.0,
              offset: Offset(1.0, 3.0),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Buy\nAnything',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(fontSize: 22.0),
            ),
            UIHelper.verticalSpaceMedium(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Stationery\nMedicine\nGrocery\n& more',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    UIHelper.verticalSpaceSmall(),
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
                    ),
                    UIHelper.verticalSpaceMedium(),
                  ],
                ),
                UIHelper.horizontalSpaceMedium(),
                Image.asset(
                  'assets/images/food3.jpg',
                  height: 80.0,
                  width: 80.0,
                  fit: BoxFit.cover,
                ),
              ],
            )
          ],
        ),
      );
}

class PopularCategorieView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Popular Categories',
            style:
                Theme.of(context).textTheme.headline4.copyWith(fontSize: 20.0),
          ),
          UIHelper.verticalSpaceMedium(),
          Container(
            alignment: Alignment.center,
            height: 140.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(10.0),
                  height: 140.0,
                  width: 80.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          height: 60.0,
                          color: Colors.grey[200],
                        ),
                      ),
                      Positioned(
                        top: 20.0,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/food4.jpg',
                              height: 60.0,
                              width: 40.0,
                              fit: BoxFit.cover,
                            ),
                            UIHelper.verticalSpaceSmall(),
                            Flexible(
                              child: Text(
                                'Cold\nBeverages',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class RestaurantVerticalListView extends StatelessWidget {
  final String title;
  final int count;

  const RestaurantVerticalListView({
    Key key,
    @required this.title,
    @required this.count,
  })  : assert(title != '', count != 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style:
                Theme.of(context).textTheme.headline4.copyWith(fontSize: 20.0),
          ),
          UIHelper.verticalSpaceMedium(),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: count,
            itemBuilder: (context, index) => FoodListItemView(),
          )
        ],
      ),
    );
  }
}
