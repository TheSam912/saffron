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
            myAppbar(),
            const SizedBox(
              height: 10,
            ),
            fullWidthBox(context, "Hydrogel", "assets/images/hydrogel.jpg"),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: boxHalfContainer(
                      "Organic\nSaffron", "assets/images/saffron.jpg"),
                ),
                Flexible(
                    flex: 1,
                    child: boxHalfContainer(
                        "Honey\nSaffron", "assets/images/honey.jpg"))
              ],
            ),
            fullWidthBox(context, "BLOG", "assets/images/blog.jpg"),
            footer()
          ],
        ),
      ),
    ],
  );
}
