import 'package:flutter/foundation.dart';

class TopPicksFood {
  final String image;
  final String name;

  TopPicksFood({
    @required this.image,
    @required this.name,
  });

  static List<TopPicksFood> getTopPicksfood() {
    return [
      TopPicksFood(image: 'assets/images/food5.jpg', name: 'Murugan Idli Shop'),
      TopPicksFood(
          image: 'assets/images/food4.jpg', name: 'Thalappakati Biryani Hotel'),
      TopPicksFood(image: 'assets/images/food1.jpg', name: 'Sangeetha'),
      TopPicksFood(image: 'assets/images/food2.jpg', name: 'Hotel Chennai'),
      TopPicksFood(image: 'assets/images/food3.jpg', name: 'Shri Balaajee'),
      TopPicksFood(
          image: 'assets/images/food4.jpg', name: 'Namma Veedu Vasantha'),
      TopPicksFood(image: 'assets/images/food6.jpg', name: 'SK Parota Stall'),
      TopPicksFood(image: 'assets/images/food7.jpg', name: 'Aasife Biryani'),
      TopPicksFood(image: 'assets/images/food8.jpg', name: 'Jesus Fast Food'),
      TopPicksFood(image: 'assets/images/food9.jpg', name: 'Ananda Bhavan'),
    ];
  }
}
