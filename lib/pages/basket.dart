import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';
import 'package:saffron_project/model/hydrogel_model.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

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
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          shape: const CircleBorder(),
          onPressed: () {},
          child: const Icon(
            Icons.shopping_cart_checkout,
            color: Colors.white,
            size: 25,
          )),
      body: Stack(
        fit: StackFit.expand,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: listHydrogel.length,
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
                          image: AssetImage(listHydrogel[index].image),
                          width: 120,
                          height: 120,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              listHydrogel[index].title,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              listHydrogel[index].weight,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete_outline,
                          color: Colors.red,
                          size: 30,
                        )),
                  ),
                  Positioned(
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
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Count: 2",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "6€",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        )),
                  )
                ],
              );
            },
          ),
          // Positioned(
          //     bottom: 0,
          //     left: 0,
          //     right: 0,
          //     child: GestureDetector(
          //       onTap: () {},
          //       child: Container(
          //         margin: const EdgeInsets.only(top: 8),
          //         padding: const EdgeInsets.symmetric(vertical: 30),
          //         decoration: BoxDecoration(
          //             color: mainColor,
          //             borderRadius: const BorderRadius.only(
          //                 topLeft: Radius.circular(5),
          //                 topRight: Radius.circular(5))),
          //         child: const Center(
          //           child: Text(
          //             "CheckOut",
          //             style: TextStyle(
          //                 color: Colors.white, fontWeight: FontWeight.bold),
          //           ),
          //         ),
          //       ),
          //     ))
        ],
      ),
    );
  }
}
