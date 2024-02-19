import 'package:flutter/material.dart';

// class TabBar_TabBarView extends StatelessWidget {
//   const TabBar_TabBarView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         // length: 3,
//         length: 10,
//         child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.purple,
//             title: const Text("TabBar demo"),
//             bottom: TabBar(
//               tabs: const [
//                 Tab(
//                   icon: Icon(Icons.directions_car),
//                   text: 'Car',
//                 ),
//                 Tab(
//                   icon: Icon(Icons.directions_transit),
//                   text: 'Transit',
//                 ),
//                 Tab(
//                   icon: Icon(Icons.directions_bike),
//                   text: 'Bike',
//                 ),
//                 Tab(
//                   icon: Icon(Icons.directions_car),
//                   text: 'Car',
//                 ),
//                 Tab(
//                   icon: Icon(Icons.directions_transit),
//                   text: 'Transit',
//                 ),
//                 Tab(
//                   icon: Icon(Icons.directions_bike),
//                   text: 'Bike',
//                 ),
//                 Tab(
//                   icon: Icon(Icons.directions_car),
//                   text: 'Car',
//                 ),
//                 Tab(
//                   icon: Icon(Icons.directions_transit),
//                   text: 'Transit',
//                 ),
//                 Tab(
//                   icon: Icon(Icons.directions_bike),
//                   text: 'Bike',
//                 ),
//                 Tab(
//                   icon: Icon(Icons.directions_transit),
//                   text: 'Transit',
//                 ),
//               ],
//               indicatorColor: Colors.amber, //warna bawah icon
//               // indicatorWeight: 20,
//               indicatorSize: TabBarIndicatorSize.tab,
//               labelColor: Colors.blue,
//               indicator: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16),
//                 color: Colors.grey,
//               ),
//               isScrollable: true, //jika panjang maka pakai ini
//             ),
//           ),
//           body: const TabBarView(
//             children: [
//               Center(
//                 child: Text("Its car here"),
//               ),
//               Center(
//                 child: Text("Its transit here"),
//               ),
//               Center(
//                 child: Text("Its bike here"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class TabBar_TabBarView extends StatefulWidget {
  const TabBar_TabBarView({super.key});

  @override
  State<TabBar_TabBarView> createState() => _TabBar_TabBarViewState();
}

class _TabBar_TabBarViewState extends State<TabBar_TabBarView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      //event logic
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new_outlined))
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                icon: Icon(Icons.directions_car),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Center(child: Text('Car')),
            Center(child: Text('Transit')),
            Center(child: Text('Bike')),
          ],
        ),
      ),
    );
  }
}
