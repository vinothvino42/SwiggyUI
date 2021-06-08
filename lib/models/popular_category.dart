class PopularCategory {
  const PopularCategory({
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  static List<PopularCategory> getPopularCategories() {
    return const [
      PopularCategory(
        image: 'assets/icons/coffee.png',
        name: 'Cold\nBeverages',
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
      PopularCategory(
        image: 'assets/icons/kawaii-sushi.png',
        name: 'Kawaii\n Sushi',
      ),
      PopularCategory(
        image: 'assets/icons/bread.png',
        name: 'Bread',
      ),
      PopularCategory(
        image: 'assets/icons/only-on-swiggy.png',
        name: 'Only on\nSwiggy',
      ),
      PopularCategory(
        image: 'assets/icons/food.png',
        name: 'Meals',
      ),
      PopularCategory(
        image: 'assets/icons/natural-food.png',
        name: 'Veg only',
      ),
      PopularCategory(
        image: 'assets/icons/coffee.png',
        name: 'Cold\nBeverages',
      ),
      PopularCategory(
        image: 'assets/icons/kawaii-sushi.png',
        name: 'Kawaii\n Sushi',
      ),
      PopularCategory(
        image: 'assets/icons/bread.png',
        name: 'Bread',
      ),
      PopularCategory(
        image: 'assets/icons/food.png',
        name: 'Meals',
      ),
      PopularCategory(
        image: 'assets/icons/milkshake.png',
        name: 'Milkshakes',
      ),
      PopularCategory(
        image: 'assets/icons/coffee.png',
        name: 'Cold\nBeverages',
      ),
      PopularCategory(
        image: 'assets/icons/natural-food.png',
        name: 'Veg only',
      ),
    ];
  }
}
