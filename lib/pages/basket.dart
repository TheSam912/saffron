import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';
import 'package:saffron_project/model/basket_model.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Basket",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: mainColor,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: listBasket.isNotEmpty
          ? FloatingActionButton(
              backgroundColor: Colors.green,
              shape: const CircleBorder(),
              onPressed: () {},
              child: const Icon(
                Icons.shopping_cart_checkout,
                color: Colors.white,
                size: 25,
              ))
          : const Center(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          listBasket.isNotEmpty
              ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: listBasket.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(12),
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(color: Colors.grey, blurRadius: 10)
                              ]),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(listBasket[index].image),
                                width: 120,
                                height: 120,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    listBasket[index].title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 15,
                          right: 15,
                          child: IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text("Are sure?"),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text("Cancle")),
                                        TextButton(
                                            onPressed: () {
                                              setState(() {
                                                listBasket
                                                    .remove(listBasket[index]);
                                              });
                                              Navigator.pop(context);
                                            },
                                            child: const Text("Yes"))
                                      ],
                                    );
                                  },
                                );
                              },
                              icon: const Icon(
                                Icons.delete_outline,
                                color: Colors.red,
                                size: 30,
                              )),
                        ),
                        rowPriceCount(index)
                      ],
                    );
                  },
                )
              : emptyBasketPage()
        ],
      ),
    );
  }
}

Widget rowPriceCount(int index) {
  var finalPrice;
  void check() {
    String listlenght = listBasket[index].count;
    var tt = int.parse(listlenght);

    String onePrice = listBasket[index].price;
    var pp = double.parse(onePrice);

    finalPrice = pp * tt;
  }

  check();

  return Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: Container(
        padding: const EdgeInsets.all(11),
        margin: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            color: mainColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Count: ${listBasket[index].count}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                // "${listBasket[index].price}€",
                "$finalPrice€",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              )
            ],
          ),
        )),
  );
}

Widget emptyBasketPage() {
  return const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image(
        image: AssetImage("assets/images/empty.png"),
        width: 150,
        height: 150,
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        "Your basket is empty!",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      )
    ],
  );
}
