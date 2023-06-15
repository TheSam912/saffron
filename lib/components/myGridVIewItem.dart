import 'package:flutter/material.dart';

import 'package:saffron_project/contant/color.dart';

import '../model/hydrogel_model.dart';
import 'dialogAddBasket.dart';

Widget myGridViewItem(BuildContext context, int index) {
  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: (context) {
          return dialogAddBasket(index);
        },
      );
    },
    child: Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 10)]),
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
  );
}
