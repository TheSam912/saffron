class BasketModel {
  int id;
  String title;
  String count;
  String price;
  String image;

  BasketModel(
      {required this.id,
      required this.title,
      required this.count,
      required this.image,
      required this.price});
}

List<BasketModel> listBasket = [];
