import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';
import 'package:saffron_project/pages/blog.dart';

import '../pages/hydrogel.dart';

Widget fullWidthBox(
    BuildContext context, String tite, String image, String type) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8),
    height: 200,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 10)]),
    child: GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return type == "hydrogel" ? const HydrogelPage() : const BlogPage();
          },
        ));
      },
      child: Stack(
        children: [
          Opacity(
            opacity: 0.3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: mainColor,
              ),
            ),
          ),
          Center(
            child: Text(
              tite,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          )
        ],
      ),
    ),
  );
}
