import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';
import 'package:saffron_project/model/hydrogel_model.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: mainColor,
                image: const DecorationImage(
                    opacity: 0.5,
                    image: AssetImage("assets/images/saffron_store.jpg"),
                    fit: BoxFit.cover)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Main Source",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Hydrogel",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.w700),
                )
              ],
            )),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: listHydrogel.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 10)
                  ]),
              child: Column(
                children: [
                  Image.asset(
                    listHydrogel[index].image,
                    width: 130,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                  Text(listHydrogel[index].title),
                  Text(listHydrogel[index].weight),
                  Text(
                    "${listHydrogel[index].price}€",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: mainColor),
                  )
                ],
              ),
            );
          },
        ),
        // const SizedBox(height: 150)
      ],
    );
  }
}
