import 'package:flutter/foundation.dart';
import 'package:swiggy_ui/models/spotlight_best_top_food.dart';

import 'indian_food.dart';

class AllRestaurant {
  const AllRestaurant({
    @required this.image,
    @required this.name,
  });

  final String image;
  final String name;

  static List<AllRestaurant> getPopularTypes() {
    return const [
      AllRestaurant(
        image: 'assets/icons/offer.png',
        name: 'Offers\nNear You',
      ),
      AllRestaurant(
        image: 'assets/icons/world-cup.png',
        name: 'Best\nSellers',
      ),
      AllRestaurant(
        image: 'assets/icons/pocket.png',
        name: 'Pocket\nFriendly',
      ),
      AllRestaurant(
        image: 'assets/icons/only-on-swiggy.png',
        name: 'Only on\nSwiggy',
      ),
      AllRestaurant(
        image: 'assets/icons/thunder.png',
        name: 'Express\nDelivery',
      ),
      AllRestaurant(
        image: 'assets/icons/delivery.png',
        name: 'Fast\nDelivery',
      ),
      AllRestaurant(
        image: 'assets/icons/blaze.png',
        name: 'Blaze\nDelivery',
      ),
      AllRestaurant(
        image: 'assets/icons/spark.png',
        name: 'Spark\nDelivery',
      ),
    ];
  }

  static List<SpotlightBestTopFood> getRestaurantListOne() {
    return const [
      SpotlightBestTopFood(
        image: 'assets/images/food2.jpg',
        name: 'Shiva Bhavan',
        desc: 'South Indian',
        coupon: '20 \$ off | Use SWIGGYIT',
        ratingTimePrice: '4.1 35 mins - Rs 150 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food4.jpg',
        name: 'Biryani Expresss',
        desc: 'North Indian',
        coupon: '20 \$ off | Use JUMBO',
        ratingTimePrice: '3.8 15 mins - Rs 200 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food7.jpg',
        name: 'BBQ King',
        desc: 'South Indian',
        coupon: '20 \$ off | Use JUMBO',
        ratingTimePrice: '4.1 25 mins - Rs 120 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food8.jpg',
        name: 'Pizza Corner',
        desc: 'South Indian',
        coupon: '30 \$ off | Use JUMBO',
        ratingTimePrice: '4.3 47 mins - Rs 350 for two',
      ),
    ];
  }

  static List<SpotlightBestTopFood> getRestaurantListTwo() {
    return const [
      SpotlightBestTopFood(
        image: 'assets/images/food4.jpg',
        name: 'Biryani Expresss',
        desc: 'North Indian',
        coupon: '20 \$ off | Use JUMBO',
        ratingTimePrice: '3.8 15 mins - Rs 200 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food3.jpg',
        name: 'A2B Chennai',
        desc: 'South Indian',
        coupon: '30 \$ off | Use A2BSUPER',
        ratingTimePrice: '4.2 32 mins - Rs 130 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food2.jpg',
        name: 'Murugan Idly',
        desc: 'South Indian',
        coupon: '20 \$ off | Use SWIGGYIT',
        ratingTimePrice: '4.1 35 mins - Rs 150 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food7.jpg',
        name: 'BBQ King',
        desc: 'South Indian',
        coupon: '20 \$ off | Use JUMBO',
        ratingTimePrice: '4.1 25 mins - Rs 120 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food8.jpg',
        name: 'Pizza Corner',
        desc: 'South Indian',
        coupon: '30 \$ off | Use JUMBO',
        ratingTimePrice: '4.3 47 mins - Rs 350 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food6.jpg',
        name: 'Adyar Hotel',
        desc: 'South Indian',
        coupon: '30 \$ off | Use JUMBO',
        ratingTimePrice: '4.3 21 mins - Rs 150 for two',
      ),
    ];
  }

  static List<SpotlightBestTopFood> getRestaurantListThree() {
    return [
      SpotlightBestTopFood(
        image: 'assets/images/food4.jpg',
        name: 'Biryani Expresss',
        desc: 'North Indian',
        coupon: '20 \$ off | Use JUMBO',
        ratingTimePrice: '3.8 15 mins - Rs 200 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food8.jpg',
        name: 'Pizza Corner',
        desc: 'South Indian',
        coupon: '30 \$ off | Use JUMBO',
        ratingTimePrice: '4.3 47 mins - Rs 350 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food2.jpg',
        name: 'Murugan Idly',
        desc: 'South Indian',
        coupon: '20 \$ off | Use SWIGGYIT',
        ratingTimePrice: '4.1 35 mins - Rs 150 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food6.jpg',
        name: 'Adyar Hotel',
        desc: 'South Indian',
        coupon: '30 \$ off | Use JUMBO',
        ratingTimePrice: '4.3 21 mins - Rs 150 for two',
      ),
    ];
  }

  static List<IndianFood> getIndianRestaurants() {
    return const [
      IndianFood(image: 'assets/images/food3.jpg', name: 'South\nIndian'),
      IndianFood(image: 'assets/images/food5.jpg', name: 'Indian\nChai'),
      IndianFood(image: 'assets/images/food1.jpg', name: 'North \nndian'),
      IndianFood(image: 'assets/images/food8.jpg', name: 'Indian\nBiryani'),
      IndianFood(image: 'assets/images/food9.jpg', name: 'Indian\nDosa'),
      IndianFood(image: 'assets/images/food4.jpg', name: 'Indian\nIdly'),
    ];
  }

  static List<IndianFood> getPopularBrands() {
    return const [
      IndianFood(image: 'assets/images/food3.jpg', name: 'Sangeetha'),
      IndianFood(image: 'assets/images/food5.jpg', name: 'Indian\nChai'),
      IndianFood(image: 'assets/images/food1.jpg', name: 'Chai\nKings'),
      IndianFood(image: 'assets/images/food8.jpg', name: 'Dosa\nMan'),
      IndianFood(image: 'assets/images/food9.jpg', name: 'Subway'),
      IndianFood(image: 'assets/images/food4.jpg', name: 'KFC'),
    ];
  }
}

class LargeRestaurantBanner {
  const LargeRestaurantBanner({
    @required this.image,
    @required this.title,
    @required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  static List<LargeRestaurantBanner> getBestInSafetyRestaurants() {
    return const [
      LargeRestaurantBanner(
        image: 'assets/images/food8.jpg',
        title: 'Namma Veedu Vasanta\n Bhavan',
        subtitle: 'South Indian',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food9.jpg',
        title: 'Chai Kings',
        subtitle: 'Desserts, Tea, Milk',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food3.jpg',
        title: 'Faaos',
        subtitle: 'Desserts, Fast Food, Bakery, Biscuits',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food4.jpg',
        title: 'Banu\n Bhavan',
        subtitle: 'Biryani, Chicken, Mutton',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food8.jpg',
        title: 'BBQ Nation',
        subtitle: 'Chicken, Fried Chickent, Tandoori Chicken',
      ),
    ];
  }

  static List<LargeRestaurantBanner> getPepsiSaveOurRestaurants() {
    return [
      LargeRestaurantBanner(
        image: 'assets/images/food1.jpg',
        title: 'Faasos',
        subtitle: 'Fast Food, North Indian, Biryani, Desserts',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food2.jpg',
        title: 'Hungry Pizza',
        subtitle: 'Pizzas',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food7.jpg',
        title: 'Paradise\n Bhavan',
        subtitle: 'Biryani, Chicken, Mutton',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food10.jpg',
        title: 'BBQ Nation',
        subtitle: 'Chicken, Fried Chickent, Tandoori Chicken',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food3.jpg',
        title: 'OMB Biryani',
        subtitle: 'Biryani',
      ),
    ];
  }
}
