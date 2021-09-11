class SpotlightBestTopFood {
  const SpotlightBestTopFood({
    required this.image,
    required this.name,
    required this.desc,
    required this.coupon,
    required this.ratingTimePrice,
  });

  final String image;
  final String name;
  final String desc;
  final String coupon;
  final String ratingTimePrice;

  static List<List<SpotlightBestTopFood>> getSpotlightRestaurants() {
    return const [
      [
        SpotlightBestTopFood(
          image: 'assets/images/food1.jpg',
          name: 'Breakfast Expresss',
          desc: 'Continental North Indian, South Indian',
          coupon: '20 \$ off | Use JUMBO',
          ratingTimePrice: '4.1 45 mins - Rs 200 for two',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food2.jpg',
          name: 'Namma Veedu Bhavan',
          desc: 'South Indian',
          coupon: '20 \$ off | Use SWIGGYIT',
          ratingTimePrice: '4.1 35 mins - Rs 150 for two',
        ),
      ],
      [
        SpotlightBestTopFood(
          image: 'assets/images/food3.jpg',
          name: 'A2B Chennai',
          desc: 'South Indian',
          coupon: '30 \$ off | Use A2BSUPER',
          ratingTimePrice: '4.2 32 mins - Rs 130 for two',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food4.jpg',
          name: 'Dinner Expresss',
          desc: 'North Indian',
          coupon: '20 \$ off | Use JUMBO',
          ratingTimePrice: '3.8 25 mins - Rs 200 for two',
        ),
      ],
      [
        SpotlightBestTopFood(
          image: 'assets/images/food5.jpg',
          name: 'Parota King',
          desc: 'South Indian',
          coupon: '20 \$ off | Use SWIGGYIT',
          ratingTimePrice: '4.1 55 mins - Rs 100 for two',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food6.jpg',
          name: 'Mass Hotel',
          desc: 'South Indian',
          coupon: '30 \$ off | Use JUMBO',
          ratingTimePrice: '4.3 22 mins - Rs 150 for two',
        ),
      ],
      [
        SpotlightBestTopFood(
          image: 'assets/images/food7.jpg',
          name: 'Mumbai Mirchi',
          desc: 'South Indian',
          coupon: '20 \$ off | Use JUMBO',
          ratingTimePrice: '4.1 25 mins - Rs 120 for two',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food8.jpg',
          name: 'BBQ Nation',
          desc: 'South Indian',
          coupon: '30 \$ off | Use JUMBO',
          ratingTimePrice: '4.3 42 mins - Rs 350 for two',
        ),
      ]
    ];
  }

  static List<List<SpotlightBestTopFood>> getBestRestaurants() {
    return const [
      [
        SpotlightBestTopFood(
          image: 'assets/images/food6.jpg',
          name: 'Mirchi Hotel',
          desc: 'South Indian',
          coupon: '30 \$ off | Use JUMBO',
          ratingTimePrice: '4.3 22 mins - Rs 150 for two',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food1.jpg',
          name: 'BBQ Expresss',
          desc: 'Continental North Indian, South Indian',
          coupon: '20 \$ off | Use JUMBO',
          ratingTimePrice: '4.1 15 mins - Rs 200 for two',
        ),
      ],
      [
        SpotlightBestTopFood(
          image: 'assets/images/food4.jpg',
          name: 'Lunch Expresss',
          desc: 'North Indian',
          coupon: '20 \$ off | Use JUMBO',
          ratingTimePrice: '3.8 35 mins - Rs 200 for two',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food3.jpg',
          name: 'A2B Chennai',
          desc: 'South Indian',
          coupon: '30 \$ off | Use A2BSUPER',
          ratingTimePrice: '4.2 42 mins - Rs 130 for two',
        ),
      ],
      [
        SpotlightBestTopFood(
          image: 'assets/images/food6.jpg',
          name: 'Mirchi Hotel',
          desc: 'South Indian',
          coupon: '30 \$ off | Use JUMBO',
          ratingTimePrice: '4.3 22 mins - Rs 150 for two',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food5.jpg',
          name: 'Parota World',
          desc: 'South Indian',
          coupon: '20 \$ off | Use SWIGGYIT',
          ratingTimePrice: '4.1 25 mins - Rs 100 for two',
        ),
      ],
      [
        SpotlightBestTopFood(
          image: 'assets/images/food7.jpg',
          name: 'Chennai Mirchi',
          desc: 'South Indian',
          coupon: '20 \$ off | Use JUMBO',
          ratingTimePrice: '4.1 25 mins - Rs 120 for two',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food8.jpg',
          name: 'BBQ Nation',
          desc: 'South Indian',
          coupon: '30 \$ off | Use JUMBO',
          ratingTimePrice: '4.3 45 mins - Rs 350 for two',
        ),
      ]
    ];
  }

  static List<List<SpotlightBestTopFood>> getTopRestaurants() {
    return const [
      [
        SpotlightBestTopFood(
          image: 'assets/images/food3.jpg',
          name: 'A2B Chennai',
          desc: 'South Indian',
          coupon: '30 \$ off | Use A2BSUPER',
          ratingTimePrice: '4.2 32 mins - Rs 130 for two',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food4.jpg',
          name: 'Biryani Expresss',
          desc: 'North Indian',
          coupon: '20 \$ off | Use JUMBO',
          ratingTimePrice: '3.8 15 mins - Rs 200 for two',
        ),
      ],
      [
        SpotlightBestTopFood(
          image: 'assets/images/food1.jpg',
          name: 'Chai Truck',
          desc: 'Continental North Indian, South Indian',
          coupon: '20 \$ off | Use JUMBO',
          ratingTimePrice: '4.1 25 mins - Rs 200 for two',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food2.jpg',
          name: 'Shiva Bhavan',
          desc: 'South Indian',
          coupon: '20 \$ off | Use SWIGGYIT',
          ratingTimePrice: '4.1 35 mins - Rs 150 for two',
        ),
      ],
      [
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
      ],
      [
        SpotlightBestTopFood(
          image: 'assets/images/food5.jpg',
          name: 'Veg King',
          desc: 'South Indian',
          coupon: '20 \$ off | Use SWIGGYIT',
          ratingTimePrice: '4.1 25 mins - Rs 100 for two',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food6.jpg',
          name: 'Adyar Hotel',
          desc: 'South Indian',
          coupon: '30 \$ off | Use JUMBO',
          ratingTimePrice: '4.3 21 mins - Rs 150 for two',
        ),
      ],
    ];
  }

  static List<SpotlightBestTopFood> getPopularAllRestaurants() {
    return const [
      SpotlightBestTopFood(
        image: 'assets/images/food5.jpg',
        name: 'Veg King',
        desc: 'South Indian',
        coupon: '20 \$ off | Use SWIGGYIT',
        ratingTimePrice: '4.1 25 mins - Rs 100 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food6.jpg',
        name: 'Adyar Hotel',
        desc: 'South Indian',
        coupon: '30 \$ off | Use JUMBO',
        ratingTimePrice: '4.3 21 mins - Rs 150 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food7.jpg',
        name: 'Chennai Mirchi',
        desc: 'South Indian',
        coupon: '20 \$ off | Use JUMBO',
        ratingTimePrice: '4.1 25 mins - Rs 120 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food8.jpg',
        name: 'BBQ Nation',
        desc: 'South Indian',
        coupon: '30 \$ off | Use JUMBO',
        ratingTimePrice: '4.3 45 mins - Rs 350 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food3.jpg',
        name: 'A2B Chennai',
        desc: 'South Indian',
        coupon: '30 \$ off | Use A2BSUPER',
        ratingTimePrice: '4.2 32 mins - Rs 130 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food4.jpg',
        name: 'Dinner Expresss',
        desc: 'North Indian',
        coupon: '20 \$ off | Use JUMBO',
        ratingTimePrice: '3.8 25 mins - Rs 200 for two',
      ),
    ];
  }

  static List<SpotlightBestTopFood> getTopGroceryRestaurants() {
    return const [
      SpotlightBestTopFood(
        image: 'assets/images/food3.jpg',
        name: 'A2B Chennai',
        desc: 'South Indian',
        coupon: '30 \$ off | Use A2BSUPER',
        ratingTimePrice: '4.2 32 mins - Rs 130 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food4.jpg',
        name: 'Biryani Expresss',
        desc: 'North Indian',
        coupon: '20 \$ off | Use JUMBO',
        ratingTimePrice: '3.8 15 mins - Rs 200 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food1.jpg',
        name: 'Chai Truck',
        desc: 'Continental North Indian, South Indian',
        coupon: '20 \$ off | Use JUMBO',
        ratingTimePrice: '4.1 25 mins - Rs 200 for two',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food2.jpg',
        name: 'Shiva Bhavan',
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
        image: 'assets/images/food5.jpg',
        name: 'Veg King',
        desc: 'South Indian',
        coupon: '20 \$ off | Use SWIGGYIT',
        ratingTimePrice: '4.1 25 mins - Rs 100 for two',
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
}
