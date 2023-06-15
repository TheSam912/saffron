import 'package:flutter/material.dart';
import 'package:saffron_project/components/footer.dart';
import 'package:saffron_project/components/mainCards.dart';
import 'package:saffron_project/contant/color.dart';

import '../components/info.dart';

class HydrogelPage extends StatefulWidget {
  const HydrogelPage({super.key});

  @override
  State<HydrogelPage> createState() => _HydrogelPageState();
}

class _HydrogelPageState extends State<HydrogelPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'INFO'),
    const Tab(text: 'STORE'),
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
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  TabBarView(
                    controller: _tabController,
                    children: const [Info()],
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
