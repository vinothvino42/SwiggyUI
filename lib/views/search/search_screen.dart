import 'package:flutter/material.dart';

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
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  foods[index].image,
                  height: 80.0,
                  width: 80.0,
                  fit: BoxFit.fill,
                ),
              ),
              UIHelper.horizontalSpaceSmall(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    foods[index].name,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(fontSize: 15.0),
                  ),
                  Text(foods[index].desc,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(color: Colors.grey[600], fontSize: 13.5)),
                  UIHelper.verticalSpaceSmall(),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 14.0,
                        color: Colors.grey[600],
                      ),
                      Text(foods[index].ratingTimePrice)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
