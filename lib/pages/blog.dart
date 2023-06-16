import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';

import 'basket.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Text(
          "Blog",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: mainColor,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
    );
  }
}
