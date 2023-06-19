import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';
import 'package:saffron_project/model/basket_model.dart';

import 'basket.dart';

// ignore: must_be_immutable, camel_case_types
class detailProduct extends StatefulWidget {
  int id;
  String image;
  String title;
  String weight;
  String price;
  String type;
  detailProduct(
      {super.key,
      required this.id,
      required this.image,
      required this.price,
      required this.title,
      required this.weight,
      required this.type});

  @override
  State<detailProduct> createState() => _detailProductState();
}

// ignore: camel_case_types
class _detailProductState extends State<detailProduct> {
  int count = 1;
  String? strPrice;
  @override
  Widget build(BuildContext context) {
    strPrice = widget.price;
    double doublePrice = double.parse(strPrice!);
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
        title: Text(
          widget.type.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: mainColor,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(color: mainColor, blurRadius: 8)]),
              child: Column(
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.weight,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.price}€",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: mainColor,
                        fontSize: 25),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (count == 1) {
                              } else {
                                count -= 1;
                              }
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: mainColor, width: 0.5)),
                            child: Image.asset(
                              "assets/images/minus.png",
                              width: 20,
                              height: 20,
                              color: mainColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "$count",
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count += 1;
                              doublePrice = doublePrice * count;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: mainColor, width: 0.5)),
                            child: Image.asset("assets/images/plus.png",
                                width: 20, height: 20, color: mainColor),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                listBasket.add(BasketModel(
                    id: 0,
                    title: widget.title,
                    count: "$count",
                    image: widget.image,
                    price: widget.price));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 18),
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: mainColor),
                child: const Center(
                  child: Text(
                    "Add to basket +",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
