import 'package:flutter/material.dart';
import 'package:saffron_project/components/footer.dart';
import 'package:saffron_project/contant/color.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 150,
        ),
        Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: mainColor,
                image: const DecorationImage(
                    opacity: 0.5,
                    image: AssetImage("assets/images/hydrogel_slider.jpg"),
                    fit: BoxFit.cover)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "What is",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Hydrogel?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.w700),
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Saffron is a rare and expensive product, and at the same time, it has been very popular and used by the public. We have decided to present saffron in the form of micronized or nano-sized saffron in the form of a calcium hydrogel band with a special method.",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Flexible(
                      flex: 5,
                      child:
                          Image.asset("assets/images/hydrogel/hydrogel1.png")),
                  Flexible(
                      flex: 5,
                      child:
                          Image.asset("assets/images/hydrogel/hydrogel2.jpeg")),
                ],
              ),
              const Text(
                "One of the reasons for this invention is to preserve the properties of saffron until the stage of consumption. It cannot be realized. First, we pulverize saffron with a special mill and dissolve it with water in a specific proportion.",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Row(
                children: [
                  Flexible(
                      flex: 5,
                      child:
                          Image.asset("assets/images/hydrogel/hydrogel3.jpeg")),
                  Flexible(
                      flex: 5,
                      child:
                          Image.asset("assets/images/hydrogel/hydrogel4.jpeg")),
                ],
              ),
              const Text(
                "In a method with a controlled heat and vacuum system, the water is removed from the environment and the micronized saffron remains, of course, while maintaining all the properties of saffron. The solution is made into a liquid and is crushed by an automatic system and gradual injection of the solution inside the vessel from a substance with a calcium base and a certain percentage, and this product takes a spherical and hard (gelatinous) shape, and this final product is the saffron hydrogel.",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        )
      ],
    );
  }
}
