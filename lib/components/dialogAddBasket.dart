import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';
import 'package:saffron_project/model/basket_model.dart';

// ignore: camel_case_types, must_be_immutable
class dialogAddBasket extends StatefulWidget {
  int index;
  List list;
  dialogAddBasket({super.key, required this.index, required this.list});

  @override
  State<dialogAddBasket> createState() => _dialogAddBasketState();
}

class _dialogAddBasketState extends State<dialogAddBasket> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                widget.list[widget.index].image,
                fit: BoxFit.cover,
                height: 300,
              ),
              Text(
                widget.list[widget.index].title,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 18),
              ),
              Text(
                widget.list[widget.index].weight,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  "${widget.list[widget.index].price}€",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: mainColor,
                      fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                        child: Image.asset(
                          "assets/images/minus.png",
                          width: 20,
                          height: 20,
                          color: mainColor,
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
                          });
                        },
                        child: Image.asset("assets/images/plus.png",
                            width: 20, height: 20, color: mainColor),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        listBasket.add(BasketModel(
                            id: 0,
                            title: widget.list[widget.index].title,
                            count: "$count",
                            image: widget.list[widget.index].image,
                            price: widget.list[widget.index].price));
                      },
                      icon: Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: mainColor,
                      ))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          )),
    );
  }
}
