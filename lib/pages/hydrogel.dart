import 'package:flutter/material.dart';
import 'package:saffron_project/components/store.dart';
import 'package:saffron_project/contant/color.dart';
import 'package:saffron_project/pages/basket.dart';

import '../components/info.dart';

class HydrogelPage extends StatefulWidget {
  const HydrogelPage({super.key});

  @override
  State<HydrogelPage> createState() => _HydrogelPageState();
}

class _HydrogelPageState extends State<HydrogelPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'STORE'),
    const Tab(text: 'INFO'),
  ];
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
        ),
        title: const Text(
          "Hydrogel",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: mainColor,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  TabBarView(
                    controller: _tabController,
                    physics: const ClampingScrollPhysics(),
                    children: const [
                      Store(),
                      Info(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
