import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:swiggy_ui/widgets/responsive.dart';

import '../groceries/grocery_screen.dart';

class OfferBannerView extends StatelessWidget {
  final List<String> images = [
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner3.jpg',
    'assets/images/banner4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);

    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15.0),
        height: isTabletDesktop ? 260.0 : 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(isTabletDesktop ? 13.0 : 10.0),
        ),
        child: Swiper(
          itemHeight: 100,
          duration: 500,
          itemWidth: double.infinity,
          pagination: SwiperPagination(),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) => Image.asset(
            images[index],
            fit: BoxFit.cover,
          ),
          autoplay: true,
          viewportFraction: 1.0,
          scale: 0.9,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GroceryScreen(),
          ),
        );
      },
    );
  }
}
