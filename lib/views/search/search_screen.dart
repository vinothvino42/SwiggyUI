import 'package:flutter/material.dart';
import 'package:swiggy_ui/widgets/search_food_list_item_view.dart';

import '../../models/spotlight_best_top_food.dart';
import '../../utils/app_colors.dart';
import '../../utils/ui_helper.dart';
import '../../widgets/custom_divider_view.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 2.0, bottom: 2.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[400]),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for restaurants and food',
                          hintStyle:
                              Theme.of(context).textTheme.subtitle2.copyWith(
                                    color: Colors.grey,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    UIHelper.horizontalSpaceMedium(),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              UIHelper.verticalSpaceExtraSmall(),
              Container(
                width: MediaQuery.of(context).size.width / 1.6,
                child: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  controller: _tabController,
                  indicatorColor: darkOrange,
                  labelStyle: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .copyWith(fontSize: 18.0, color: darkOrange),
                  unselectedLabelStyle: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .copyWith(fontSize: 18.0, color: Colors.grey[200]),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      child: Text('Restaurant'),
                    ),
                    Tab(
                      child: Text('Dishes'),
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpaceSmall(),
              CustomDividerView(dividerHeight: 8.0),
              _SearchListView(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchListView extends StatelessWidget {
  final List<SpotlightBestTopFood> foods =
      SpotlightBestTopFood.getPopularAllRestaurants();

  @override
  Widget build(BuildContext context) {
    foods.addAll(SpotlightBestTopFood.getPopularAllRestaurants());

    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: foods.length,
        itemBuilder: (context, index) => SearchFoodListItemView(
          food: foods[index],
        ),
      ),
    );
  }
}
