class CardItem {
  final String assetImage;
  final String title;

  const CardItem({
    required this.assetImage,
    required this.title,
  });
}

  List<CardItem> items = const [
    CardItem(assetImage: 'assets/images/ht1.jpeg', title: 'Robotics'),
    CardItem(assetImage: 'assets/images/ht2.jpeg', title: 'Intelligence'),
    CardItem(assetImage: 'assets/images/ht3.jpeg', title: 'Reactor'),
    CardItem(assetImage: 'assets/images/ht4.jpeg', title: 'Archnet'),
    CardItem(assetImage: 'assets/images/ht5.jpeg', title: '6G'),
  ];