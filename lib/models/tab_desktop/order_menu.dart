import 'package:flutter/foundation.dart';

class OrderMenu {
  const OrderMenu({
    @required this.image,
    @required this.title,
    @required this.quantity,
    @required this.price,
  });

  final String image;
  final String title;
  final int quantity;
  final int price;

  static List<OrderMenu> getCartItems() {
    return const [
      OrderMenu(
        image: 'assets/images/food1.jpg',
        title: 'Breakfast Expresss',
        quantity: 3,
        price: 140,
      ),
      OrderMenu(
        image: 'assets/images/food2.jpg',
        title: 'Pizza Corner',
        quantity: 1,
        price: 160,
      ),
      OrderMenu(
        image: 'assets/images/food3.jpg',
        title: 'BBQ King',
        quantity: 2,
        price: 230,
      ),
      OrderMenu(
        image: 'assets/images/food4.jpg',
        title: 'Sea Emperor',
        quantity: 6,
        price: 30,
      ),
      OrderMenu(
        image: 'assets/images/food5.jpg',
        title: 'Chai Truck',
        quantity: 4,
        price: 10,
      ),
    ];
  }
}
