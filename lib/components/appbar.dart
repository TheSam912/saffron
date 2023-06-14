import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';

Widget myAppbar() {
  return Container(
    decoration: BoxDecoration(
        color: mainColor,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
                width: 80,
                height: 80,
              ),
              const Text(
                "Saffron",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_rounded,
                size: 25,
                color: Colors.white,
              )),
        )
      ],
    ),
  );
}
