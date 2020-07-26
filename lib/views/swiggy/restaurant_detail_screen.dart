import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/custom_divider_view.dart';
import 'package:swiggy_ui/widgets/veg_badge_view.dart';

class RestaurantDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Icon(Icons.favorite_border),
            UIHelper.horizontalSpaceSmall(),
            Icon(Icons.search),
            UIHelper.horizontalSpaceSmall(),
          ],
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(child: Text('Order Now')),
              Tab(child: Text('Safety Standards')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _OrderNowView(),
            _SafetyStandardsView(),
          ],
        ),
      ),
    );
  }
}

class _OrderNowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
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
                        .subtitle2
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Text('South Indian',
                      style: Theme.of(context).textTheme.bodyText1),
                  UIHelper.verticalSpaceExtraSmall(),
                  Text('Velachery Main Road, Madipakkam',
                      style: Theme.of(context).textTheme.bodyText1),
                  UIHelper.verticalSpaceMedium(),
                  CustomDividerView(dividerHeight: 1.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildVerticalStack(context, '4.1', 'Packaging 80%'),
                      _buildVerticalStack(context, '29 mins', 'Delivery Time'),
                      _buildVerticalStack(context, 'Rs150', 'For Two'),
                    ],
                  ),
                  CustomDividerView(dividerHeight: 1.0),
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
            CustomDividerView(dividerHeight: 15.0),
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
                        Icon(Icons.filter_vintage,
                            color: Colors.green, size: 12.0),
                        UIHelper.horizontalSpaceExtraSmall(),
                        Text('PURE VEG',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0))
                      ],
                    ),
                  ),
                  CustomDividerView(dividerHeight: 0.5, color: Colors.black)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Recommended',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(fontSize: 18.0),
              ),
            ),
            _RecommendedFoodView(),
            CustomDividerView(dividerHeight: 15.0),
            _BreakFastView()
          ],
        ),
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
                    .bodyText1
                    .copyWith(fontSize: 13.0),
              ),
            )
          ],
        ),
      );

  Container _buildVerticalStack(
          BuildContext context, String title, String subtitle) =>
      Container(
        height: 60.0,
        width: (MediaQuery.of(context).size.width / 3) - 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(fontSize: 15.0),
            ),
            UIHelper.verticalSpaceExtraSmall(),
            Text(subtitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 13.0))
          ],
        ),
      );
}

class _RecommendedFoodView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        physics: NeverScrollableScrollPhysics(),
        children: List.generate(
          5,
          (index) => Container(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'assets/images/food1.jpg',
                  height: 130.0,
                  fit: BoxFit.fill,
                ),
                UIHelper.verticalSpaceExtraSmall(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'BREAKFAST',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 10.0,
                            color: Colors.grey[700],
                          ),
                    ),
                    UIHelper.verticalSpaceExtraSmall(),
                    Row(
                      children: <Widget>[
                        VegBadgeView(),
                        UIHelper.horizontalSpaceExtraSmall(),
                        Flexible(
                          child: Text(
                            'Idly (2pc) with Chatney',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(fontSize: 13.0),
                          ),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpaceMedium(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Rs48',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 14.0)),
                        AddBtnView()
                      ],
                    )
                  ],
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
    Key key,
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
        style:
            Theme.of(context).textTheme.subtitle2.copyWith(color: Colors.green),
      ),
    );
  }
}

class _BreakFastView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Breakfast',
            style:
                Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 18.0),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      VegBadgeView(),
                      UIHelper.horizontalSpaceSmall(),
                      Text(
                        'Idly (2pc) Breakfast',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Spacer(),
                      AddBtnView()
                    ],
                  ),
                  Text(
                    'Rs 48',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 14.0),
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

class _SafetyStandardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Work In Progress',
          style: Theme.of(context).textTheme.subtitle2),
    );
  }
}
