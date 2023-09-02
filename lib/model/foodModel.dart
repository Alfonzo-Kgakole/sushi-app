class Food {
  String name;
  String price;
  String imagePath;
  String rating;

  Food(
      {required this.name,
      required this.imagePath,
      required this.price,
      required this.rating});

  String get _name => name;
  String get _imagepath => imagePath;
  String get _price => price;
  String get _rating => rating;
}
