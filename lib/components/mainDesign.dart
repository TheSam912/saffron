import 'package:flutter/material.dart';

import 'appbar.dart';
import 'footer.dart';
import 'fullWidthBox.dart';
import 'halfWidthBox.dart';

Widget mainDesign(BuildContext context) {
  return Stack(
    children: [
      Positioned(
        child: Column(
          children: [
            myAppbar(context),
            const SizedBox(
              height: 10,
            ),
            fullWidthBox(
                context, "Hydrogel", "assets/images/hydrogel.jpg", "hydrogel"),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: boxHalfContainer(context, "Organic\nSaffron",
                      "assets/images/saffron.jpg", "saffron"),
                ),
                Flexible(
                    flex: 1,
                    child: boxHalfContainer(context, "Honey\nSaffron",
                        "assets/images/honey.jpg", "honey"))
              ],
            ),
            fullWidthBox(context, "BLOG", "assets/images/blog.jpg", "blog"),
            footer()
          ],
        ),
      ),
    ],
  );
}
