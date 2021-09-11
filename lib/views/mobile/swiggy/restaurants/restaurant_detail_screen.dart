import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/restaurant_detail.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/custom_divider_view.dart';
import 'package:swiggy_ui/widgets/veg_badge_view.dart';

class RestaurantDetailScreen extends StatelessWidget {
  const RestaurantDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        actions: <Widget>[
          const Icon(Icons.favorite_border),
          UIHelper.horizontalSpaceSmall(),
          const Icon(Icons.search),
          UIHelper.horizontalSpaceSmall(),
        ],
      ),
      body: _OrderNowView(),
    );
  }
}

class _OrderNowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Namma Veedu Vasanta Bhavan',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                UIHelper.verticalSpaceSmall(),
                Text('South Indian',
                    style: Theme.of(context).textTheme.bodyText1),
                UIHelper.verticalSpaceExtraSmall(),
                Text('Velachery Main Road, Madipakkam',
                    style: Theme.of(context).textTheme.bodyText1),
                UIHelper.verticalSpaceMedium(),
                const CustomDividerView(dividerHeight: 1.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buildVerticalStack(context, '4.1', 'Packaging 80%'),
                    _buildVerticalStack(context, '29 mins', 'Delivery Time'),
                    _buildVerticalStack(context, 'Rs150', 'For Two'),
                  ],
                ),
                const CustomDividerView(dividerHeight: 1.0),
                UIHelper.verticalSpaceMedium(),
                Column(
                  children: <Widget>[
                    _buildOfferTile(
                        context, '30% off up to Rs75 | Use code SWIGGYIT'),
                    _buildOfferTile(context,
                        '20% off up to Rs100 with SBI credit cards, once per week | Use code 100SBI')
                  ],
                ),
                UIHelper.verticalSpaceSmall(),
              ],
            ),
          ),
          const CustomDividerView(dividerHeight: 15.0),
          Container(
            height: 80.0,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Icon(
                        Icons.filter_vintage,
                        color: Colors.green,
                        size: 12.0,
                      ),
                      UIHelper.horizontalSpaceExtraSmall(),
                      Text('PURE VEG',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 16.0))
                    ],
                  ),
                ),
                const CustomDividerView(dividerHeight: 0.5, color: Colors.black)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Recommended',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(fontSize: 18.0),
            ),
          ),
          _RecommendedFoodView(),
          const CustomDividerView(dividerHeight: 15.0),
          _FoodListView(
            title: 'Breakfast',
            foods: RestaurantDetail.getBreakfast(),
          ),
          const CustomDividerView(dividerHeight: 15.0),
          _FoodListView(
            title: 'All Time Favourite',
            foods: RestaurantDetail.getAllTimeFavFoods(),
          ),
          const CustomDividerView(dividerHeight: 15.0),
          _FoodListView(
            title: 'Kozhukattaiyum & Paniyarams',
            foods: RestaurantDetail.getOtherDishes(),
          )
        ],
      ),
    );
  }

  Padding _buildOfferTile(BuildContext context, String desc) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.local_offer, color: Colors.red[600], size: 15.0),
            UIHelper.horizontalSpaceSmall(),
            Flexible(
              child: Text(
                desc,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 13.0),
              ),
            )
          ],
        ),
      );

  Expanded _buildVerticalStack(
          BuildContext context, String title, String subtitle) =>
      Expanded(
        child: SizedBox(
          height: 60.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontSize: 15.0),
              ),
              UIHelper.verticalSpaceExtraSmall(),
              Text(subtitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 13.0))
            ],
          ),
        ),
      );
}

class _RecommendedFoodView extends StatelessWidget {
  final foods = RestaurantDetail.getBreakfast();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          foods.length,
          (index) => Container(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    foods[index].image,
                    fit: BoxFit.fill,
                  ),
                ),
                UIHelper.verticalSpaceExtraSmall(),
                SizedBox(
                  height: 80.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'BREAKFAST',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 10.0,
                              color: Colors.grey[700],
                            ),
                      ),
                      UIHelper.verticalSpaceExtraSmall(),
                      Row(
                        children: <Widget>[
                          const VegBadgeView(),
                          UIHelper.horizontalSpaceExtraSmall(),
                          Flexible(
                            child: Text(
                              foods[index].title,
                              maxLines: 1,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      UIHelper.verticalSpaceMedium(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(foods[index].price,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 14.0)),
                          const AddBtnView()
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddBtnView extends StatelessWidget {
  const AddBtnView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 25.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Text(
        'ADD',
        style: Theme.of(context)
            .textTheme
            .subtitle2!
            .copyWith(color: Colors.green),
      ),
    );
  }
}

class _FoodListView extends StatelessWidget {
  const _FoodListView({
    Key? key,
    required this.title,
    required this.foods,
  }) : super(key: key);

  final String title;
  final List<RestaurantDetail> foods;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          UIHelper.verticalSpaceMedium(),
          Text(
            title,
            style:
                Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 18.0),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: foods.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  UIHelper.verticalSpaceSmall(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const VegBadgeView(),
                      UIHelper.horizontalSpaceMedium(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(
                              foods[index].title,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            UIHelper.verticalSpaceSmall(),
                            Text(
                              foods[index].price,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 14.0),
                            ),
                            UIHelper.verticalSpaceMedium(),
                            Text(
                              foods[index].desc,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 12.0,
                                    color: Colors.grey[500],
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const AddBtnView()
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
