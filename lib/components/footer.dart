import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';

Widget footer() {
  return Container(
      margin: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          itemBottom("About Us", "assets/images/info.png"),
          itemBottom("Work With Us", "assets/images/work.png"),
          itemBottom("Contact Us", "assets/images/contact.png")
        ],
      ));
}

Widget itemBottom(String title, String image) {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(
                image: AssetImage(image),
                width: 40,
                height: 40,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          )
        ],
      ));
}
