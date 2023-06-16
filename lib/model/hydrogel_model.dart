class HydrogelModel {
  int id;
  String title;
  String weight;
  String price;
  String image;

  HydrogelModel(
      {required this.id,
      required this.title,
      required this.weight,
      required this.price,
      required this.image});
}

List<HydrogelModel> listHydrogel = [
  HydrogelModel(
      id: 0,
      title: "YELLOW 1gram saffron",
      weight: "120gram hyedrogel",
      price: "6.99",
      image: "assets/images/hydrogel/hydrogel1.png"),
  HydrogelModel(
      id: 1,
      title: "ORANGE 1gram saffron",
      weight: "100gram hyedrogel",
      price: "6.50",
      image: "assets/images/hydrogel/hydrogel2.jpeg"),
  HydrogelModel(
      id: 2,
      title: "RED 1gram saffron",
      weight: "60gram  hyedrogel",
      price: "5.99",
      image: "assets/images/hydrogel/hydrogel3.jpeg"),
  HydrogelModel(
      id: 3,
      title: "1gram saffron",
      weight: "100gram hyedrogel",
      price: "3.50",
      image: "assets/images/hydrogel/hydrogel4.jpeg"),
];
