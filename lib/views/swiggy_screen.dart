import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/custom_divider_view.dart';

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
                      _FoodGroceriesAvailabilityView(),
                      _TopPicksForYouView(),
                      _OfferBannerView(),
                      CustomDividerView(),
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

class _FoodGroceriesAvailabilityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
                child: Container(
                  width: 10.0,
                  height: 140.0,
                  color: swiggyOrange,
                ),
              ),
              UIHelper.horizontalSpaceMedium(),
              Flexible(
                child: Column(
                  children: <Widget>[
                    Text(
                      'We are now deliverying food groceries and other essentials.',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Text(
                      'Food & Genie service (Mon-Sat)-6:00 am to 9:00pm. Groceries & Meat (Mon-Sat)-6:00 am to 6:00pm. Dairy (Mon-Sat)-6:00 am to 6:00pm (Sun)-6:00 am to 12:00 pm',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 16.0,
                            color: Colors.grey[800],
                          ),
                    )
                  ],
                ),
              )
            ],
          ),
          UIHelper.verticalSpaceLarge(),
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: 150.0,
                  color: swiggyOrange,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Restaurants',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(color: Colors.white),
                            ),
                            UIHelper.verticalSpaceExtraSmall(),
                            Text(
                              'No-contact delivery available',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 45.0,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        color: darkOrange,
                        child: Row(
                          children: <Widget>[
                            Text(
                              'View all',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                      color: Colors.white, fontSize: 18.0),
                            ),
                            UIHelper.horizontalSpaceSmall(),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -5.0,
                right: -10.0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/food1.jpg',
                    width: 160.0,
                    height: 160.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _bulidCardView(context),
              _bulidCardView(context),
              _bulidCardView(context),
            ],
          )
        ],
      ),
    );
  }

  Expanded _bulidCardView(BuildContext context) => Expanded(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                padding: const EdgeInsets.only(top: 8.0),
                decoration:
                    BoxDecoration(color: swiggyOrange, boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3.0,
                    offset: Offset(1, 4),
                  )
                ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Genie',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.white),
                    ),
                    UIHelper.verticalSpaceExtraSmall(),
                    Flexible(
                      child: Image.asset(
                        'assets/images/food2.jpg',
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ),
            ),
            UIHelper.verticalSpaceMedium(),
            Text('Anything you need, delivered', textAlign: TextAlign.center),
          ],
        ),
      );
}

class _TopPicksForYouView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.thumb_up, size: 20.0),
              UIHelper.horizontalSpaceSmall(),
              Text(
                'Top Picks For You',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontSize: 20.0),
              )
            ],
          ),
          UIHelper.verticalSpaceLarge(),
          Container(
            height: 165.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: Image.asset(
                        'assets/images/food2.jpg',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Text(
                      'Hotel Chennai',
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    UIHelper.verticalSpaceExtraSmall(),
                    Text(
                      '34 min',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Colors.grey[700],
                            fontSize: 12.0,
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

class _OfferBannerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: 180.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Swiper(
        itemHeight: 100,
        duration: 500,
        itemWidth: double.infinity,
        pagination: SwiperPagination(),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) => Image.asset(
          'assets/images/banner1.jpg',
          fit: BoxFit.cover,
        ),
        autoplay: true,
        viewportFraction: 1.0,
        scale: 0.9,
      ),
    );
  }
}

class _IndianFoodView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Column(
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  'assets/images/food2.jpg',
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ));
  }
}
