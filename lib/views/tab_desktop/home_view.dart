import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/views/mobile/swiggy/best_in_safety_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/in_the_spotlight_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/offers/offer_banner_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/popular_brand_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/popular_categories_view.dart';
import 'package:swiggy_ui/views/mobile/swiggy/swiggy_safety_banner_view.dart';
import 'package:swiggy_ui/widgets/custom_divider_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key, this.expandFlex = 4}) : super(key: key);

  final int expandFlex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: expandFlex,
      child: Container(
        padding: EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0, bottom: 20.0),
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
            OfferBannerView(isDesktop: true),
            PopularBrandsView(),
            CustomDividerView(),
            PopularCategoriesView(),
            CustomDividerView(),
            InTheSpotlightView(isDesktop: true),
            CustomDividerView(),
            SwiggySafetyBannerView(isDesktop: true),
            BestInSafetyViews(isDesktop: true),
            CustomDividerView(),
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
      padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: Row(
        children: [
          Icon(Icons.search_outlined),
          UIHelper.horizontalSpaceMedium(),
          Expanded(
            child: Text(
              'What would you like to eat?',
              style: Theme.of(context).textTheme.subtitle1.copyWith(
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
