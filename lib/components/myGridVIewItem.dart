import 'package:flutter/material.dart';

import 'package:saffron_project/contant/color.dart';
import 'package:saffron_project/pages/detailProduct.dart';

import '../model/hydrogel_model.dart';

Widget myGridViewItem(BuildContext context, int index) {
  return Stack(
    fit: StackFit.expand,
    children: [
      GestureDetector(
        onTap: () {
          // showDialog(
          //   context: context,
          //   builder: (context) {
          //     return dialogAddBasket(index: index, list: listHydrogel);
          //   },
          // );
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return detailProduct(
                id: listHydrogel[index].id,
                image: listHydrogel[index].image,
                price: listHydrogel[index].price,
                title: listHydrogel[index].title,
                weight: listHydrogel[index].weight,
                type: "Hydrogel",
              );
            },
          ));
        },
        child: Container(
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
                listHydrogel[index].image,
                width: 130,
                height: 130,
                fit: BoxFit.cover,
              ),
              Text(listHydrogel[index].title),
              Text(listHydrogel[index].weight),
              Text(
                "${listHydrogel[index].price}€",
                style: TextStyle(fontWeight: FontWeight.w800, color: mainColor),
              )
            ],
          ),
        ),
      ),
      Positioned(
          top: 15,
          right: 15,
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(shape: BoxShape.circle, color: mainColor),
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
}
