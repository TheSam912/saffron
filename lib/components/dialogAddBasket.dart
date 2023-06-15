import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';

import '../model/hydrogel_model.dart';

Widget dialogAddBasket(int index) {
  return Dialog(
    child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              listHydrogel[index].image,
              fit: BoxFit.cover,
              height: 400,
            ),
            Text(
              listHydrogel[index].title,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 18),
            ),
            Text(
              listHydrogel[index].weight,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                "${listHydrogel[index].price}€",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: mainColor,
                    fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            OutlinedButton(
                onPressed: () {},
                child: const Text(
                  "Add to basket +",
                  style: TextStyle(fontWeight: FontWeight.w700),
                )),
            const SizedBox(
              height: 15,
            ),
          ],
        )),
  );
}
