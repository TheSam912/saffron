import 'package:flutter/material.dart';
import 'package:saffron_project/components/dialogAddBasket.dart';
import 'package:saffron_project/contant/color.dart';
import 'package:saffron_project/model/product_model.dart';
import 'package:saffron_project/pages/detailProduct.dart';

import '../model/basket_model.dart';
import 'basket.dart';

// ignore: must_be_immutable
class ProductsStore extends StatelessWidget {
  String type;
  ProductsStore({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const BasketPage();
                    },
                  ));
                },
                icon: const Icon(
                  Icons.shopping_cart_rounded,
                  size: 25,
                  color: Colors.white,
                )),
          )
        ],
        title: Text(
          type == "saffron" ? "Organic Saffron" : "Honey Saffron",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: mainColor,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: type == "saffron" ? gridSaffron() : gridHoney(),
    );
  }
}

Widget gridHoney() {
  return GridView.builder(
    gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: honeyList.length,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return detailProduct(
                  id: honeyList[index].id,
                  image: honeyList[index].image,
                  price: honeyList[index].price,
                  title: honeyList[index].title,
                  weight: honeyList[index].weight,
                  type: "Honey");
            },
          ));
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 10)
                  ]),
              child: Column(
                children: [
                  Image.asset(
                    honeyList[index].image,
                    width: 130,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                  Text(honeyList[index].title),
                  Text(honeyList[index].weight),
                  Text(
                    "${honeyList[index].price}€",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: mainColor),
                  )
                ],
              ),
            ),
            Positioned(
                top: 15,
                right: 15,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: mainColor),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                        size: 20,
                      )),
                ))
          ],
        ),
      );
    },
  );
}

Widget gridSaffron() {
  return GridView.builder(
    gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: saffronList.length,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return detailProduct(
                  id: saffronList[index].id,
                  image: saffronList[index].image,
                  price: saffronList[index].price,
                  title: saffronList[index].title,
                  weight: saffronList[index].weight,
                  type: "Saffron");
            },
          ));
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 10)
                  ]),
              child: Column(
                children: [
                  Image.asset(
                    saffronList[index].image,
                    width: 130,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                  Text(saffronList[index].title),
                  Text(saffronList[index].weight),
                  Text(
                    "${saffronList[index].price}€",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: mainColor),
                  )
                ],
              ),
            ),
            Positioned(
                top: 15,
                right: 15,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: mainColor),
                  child: IconButton(
                      onPressed: () {
                        listBasket.add(BasketModel(
                            id: 0,
                            title:
                                "${saffronList[index].weight} ${saffronList[index].title}",
                            count: "1",
                            image: saffronList[index].image,
                            price: saffronList[index].price));
                      },
                      icon: const Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                        size: 20,
                      )),
                ))
          ],
        ),
      );
    },
  );
}
