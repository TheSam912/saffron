import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';

Widget boxHalfContainer(String title, String image) {
  return Container(
    height: 200,
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 10)]),
    child: Stack(
      children: [
        Opacity(
          opacity: 0.4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: mainColor,
            ),
          ),
        ),
        Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
          ),
        )
      ],
    ),
  );
}
