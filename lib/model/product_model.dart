class ProductModel {
  int id;
  String title;
  String weight;
  String image;
  String price;

  ProductModel(
      {required this.id,
      required this.title,
      required this.weight,
      required this.image,
      required this.price});
}

List<ProductModel> productList = [
  ProductModel(
      id: 4,
      title: "Saffron 100% Organic",
      weight: "1 Grams",
      image: "assets/images/saffron/saffron1.png",
      price: "8"),
  ProductModel(
      id: 0,
      title: "Saffron 100% Organic",
      weight: "5 Grams",
      image: "assets/images/saffron/saffron1.png",
      price: "20"),
  ProductModel(
      id: 1,
      title: "Saffron 100% Organic",
      weight: "10 Grams",
      image: "assets/images/saffron/saffron1.png",
      price: "50"),
  ProductModel(
      id: 2,
      title: "Saffron 100% Organic",
      weight: "40 Grams",
      image: "assets/images/saffron/saffron1.png",
      price: "100"),
  ProductModel(
      id: 3,
      title: "Saffron 100% Organic",
      weight: "100 Grams",
      image: "assets/images/saffron/saffron1.png",
      price: "200"),
];
