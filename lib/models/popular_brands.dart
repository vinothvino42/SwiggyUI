class PopularBrands {
  const PopularBrands({
    required this.image,
    required this.name,
    required this.minutes,
  });

  final String image;
  final String name;
  final String minutes;

  static List<PopularBrands> getPopularBrands() {
    return const [
      PopularBrands(
          image: 'assets/images/food5.jpg',
          name: 'Sangeetha',
          minutes: '42 mins'),
      PopularBrands(
          image: 'assets/images/food4.jpg',
          name: 'Thalappakati',
          minutes: '32 mins'),
      PopularBrands(
          image: 'assets/images/food1.jpg', name: 'Subway', minutes: '26 mins'),
      PopularBrands(
          image: 'assets/images/food2.jpg',
          name: 'Chai Kings',
          minutes: '38 mins'),
      PopularBrands(
          image: 'assets/images/food3.jpg',
          name: 'BBQ Nation',
          minutes: '53 mins'),
      PopularBrands(
          image: 'assets/images/food4.jpg',
          name: 'A2B Chennai',
          minutes: '22 mins'),
      PopularBrands(
          image: 'assets/images/food6.jpg', name: 'KFC', minutes: '13 mins'),
      PopularBrands(
          image: 'assets/images/food7.jpg',
          name: 'Aasife Biryani',
          minutes: '31 mins'),
      PopularBrands(
          image: 'assets/images/food8.jpg',
          name: 'Chennai Biryani',
          minutes: '44 mins'),
    ];
  }
}
