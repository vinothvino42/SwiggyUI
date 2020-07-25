import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/spotlight_best_top_food.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/food_list_item_view.dart';

class OffersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'OFFERS',
            style:
                Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 17.0),
          ),
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(child: Text('RESTAURANT OFFERS')),
              Tab(child: Text('PAYMENT OFFERS/COUPONS')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _RestaurantOfferView(),
            _PaymentOffersCouponView(),
          ],
        ),
      ),
    );
  }
}

class _RestaurantOfferView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final foods = SpotlightBestTopFood.getPopularAllRestaurants();
    foods.addAll(SpotlightBestTopFood.getPopularAllRestaurants());
    foods.addAll(SpotlightBestTopFood.getPopularAllRestaurants());

    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          UIHelper.verticalSpaceSmall(),
          Text(
            'All Offers (18)',
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold),
          ),
          UIHelper.verticalSpaceMedium(),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 18,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: FoodListItemView(
                  restaurant: foods[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _PaymentOffersCouponView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15.0),
            height: 40.0,
            color: Colors.grey[200],
            child: Text('Available Coupons',
                style: Theme.of(context).textTheme.subtitle2),
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: 6,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) => Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 25.0,
                    color: Colors.yellow[700],
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/food1.jpg',
                          height: 10.0,
                          width: 10.0,
                          fit: BoxFit.cover,
                        ),
                        UIHelper.horizontalSpaceMedium(),
                        Text('100INDUSIND',
                            style: Theme.of(context).textTheme.subtitle2)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
