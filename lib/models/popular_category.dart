import 'package:flutter/foundation.dart';

class PopularCategory {
  final String image;
  final String name;

  PopularCategory({
    @required this.image,
    @required this.name,
  });

  static List<PopularCategory> getPopularCategories() {
    return [
      PopularCategory(
        image: 'assets/icons/coffee.png',
        name: 'Cold Beverages',
      ),
      PopularCategory(
        image: 'assets/icons/natural-food.png',
        name: 'Veg only',
      ),
      PopularCategory(
        image: 'assets/icons/only-on-swiggy.png',
        name: 'Only on\nSwiggy',
      ),
      PopularCategory(
        image: 'assets/icons/offer.png',
        name: 'Offers',
      ),
      PopularCategory(
        image: 'assets/icons/food.png',
        name: 'Meals',
      ),
      PopularCategory(
        image: 'assets/icons/milkshake.png',
        name: 'Milkshakes',
      ),
    ];
  }
}
