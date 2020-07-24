import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class OfferBannerView extends StatelessWidget {
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
