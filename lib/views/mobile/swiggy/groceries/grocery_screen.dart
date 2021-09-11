import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/spotlight_best_top_food.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/mobile/search_food_list_item_view.dart';
import 'package:swiggy_ui/widgets/responsive.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const _GroceryHeaderView(),
            UIHelper.verticalSpaceMedium(),
            const GroceryListView(
              title: '156 RESTAURANTS NEARBY',
            ),
          ],
        ),
      ),
    );
  }
}

class _GroceryHeaderView extends StatelessWidget {
  const _GroceryHeaderView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);

    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/banner3.jpg',
          height: MediaQuery.of(context).size.height / 2.1,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        if (!isTabletDesktop)
          Positioned(
            top: 40.0,
            left: 0.4,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 28.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
      ],
    );
  }
}

class GroceryListView extends StatelessWidget {
  const GroceryListView({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final restaurants = SpotlightBestTopFood.getTopGroceryRestaurants();

    final headerStyle = Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(fontWeight: FontWeight.w500, fontSize: 13.0);

    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: headerStyle,
              ),
              const Spacer(),
              const Icon(Icons.filter_list),
              UIHelper.horizontalSpaceSmall(),
              Text('SORT/FILTER', style: headerStyle)
            ],
          ),
          UIHelper.verticalSpaceSmall(),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: restaurants.length,
            itemBuilder: (context, index) => SearchFoodListItemView(
              food: restaurants[index],
            ),
          )
        ],
      ),
    );
  }
}
