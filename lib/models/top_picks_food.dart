class TopPicksFood {
  const TopPicksFood({
    required this.image,
    required this.name,
    required this.minutes,
  });

  final String image;
  final String name;
  final String minutes;

  static List<TopPicksFood> getTopPicksfoods() {
    return const [
      TopPicksFood(
          image: 'assets/images/food5.jpg',
          name: 'Murugan Idli Shop',
          minutes: '42 mins'),
      TopPicksFood(
          image: 'assets/images/food4.jpg',
          name: 'Thalappakati Biryani Hotel',
          minutes: '32 mins'),
      TopPicksFood(
          image: 'assets/images/food1.jpg',
          name: 'Sangeetha',
          minutes: '26 mins'),
      TopPicksFood(
          image: 'assets/images/food2.jpg',
          name: 'Hotel Chennai',
          minutes: '38 mins'),
      TopPicksFood(
          image: 'assets/images/food3.jpg',
          name: 'Shri Balaajee',
          minutes: '53 mins'),
      TopPicksFood(
          image: 'assets/images/food4.jpg',
          name: 'Namma Veedu Vasantha',
          minutes: '22 mins'),
      TopPicksFood(
          image: 'assets/images/food6.jpg',
          name: 'SK Parota Stall',
          minutes: '13 mins'),
      TopPicksFood(
          image: 'assets/images/food7.jpg',
          name: 'Aasife Biryani',
          minutes: '31 mins'),
      TopPicksFood(
          image: 'assets/images/food8.jpg',
          name: 'Jesus Fast Food',
          minutes: '44 mins'),
      TopPicksFood(
          image: 'assets/images/food9.jpg',
          name: 'Ananda Bhavan',
          minutes: '55 mins'),
    ];
  }
}
