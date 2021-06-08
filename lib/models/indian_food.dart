class IndianFood {
  const IndianFood({
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  static List<IndianFood> getIndianRestaurants() {
    return const [
      IndianFood(image: 'assets/images/food3.jpg', name: 'South\nIndian'),
      IndianFood(image: 'assets/images/food5.jpg', name: 'Indian\nChai'),
      IndianFood(image: 'assets/images/food1.jpg', name: 'North \nIndian'),
      IndianFood(image: 'assets/images/food8.jpg', name: 'Indian\nBiryani'),
      IndianFood(image: 'assets/images/food9.jpg', name: 'Indian\nDosa'),
      IndianFood(image: 'assets/images/food4.jpg', name: 'Indian\nIdly'),
    ];
  }
}
