class Genie {
  const Genie({
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  static List<Genie> getGenieServices() {
    return const [
      Genie(image: 'assets/icons/home.png', title: 'Home\nFood'),
      Genie(image: 'assets/icons/documents.png', title: 'Documents\nBooks'),
      Genie(image: 'assets/icons/delivery.png', title: 'Business\nDeliveries'),
      Genie(image: 'assets/icons/courier.png', title: 'Courier'),
      Genie(image: 'assets/icons/more.png', title: 'Anything\nElse'),
    ];
  }
}
