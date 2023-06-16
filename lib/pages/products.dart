import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';
import 'package:saffron_project/model/product_model.dart';

import 'basket.dart';

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
  return Container();
}

Widget gridSaffron() {
  return GridView.builder(
    gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: productList.length,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Stack(
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
                  productList[index].image,
                  width: 130,
                  height: 130,
                  fit: BoxFit.cover,
                ),
                Text(productList[index].title),
                Text(productList[index].weight),
                Text(
                  "${productList[index].price}€",
                  style:
                      TextStyle(fontWeight: FontWeight.w800, color: mainColor),
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
      );
    },
  );
}
