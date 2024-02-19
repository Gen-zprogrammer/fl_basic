import 'package:flutter/material.dart';

class BottomNavigationBarItems extends StatelessWidget {
  const BottomNavigationBarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomBottomNavbarItems(),
    );
  }
}

class CustomBottomNavbarItems extends StatefulWidget {
  const CustomBottomNavbarItems({super.key});

  @override
  State<CustomBottomNavbarItems> createState() =>
      _CustomBottomNavbarItemsState();
}

class _CustomBottomNavbarItemsState extends State<CustomBottomNavbarItems> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _page = [
    Text('Home'),
    Text('Business'),
    Text('Setting'),
    Text('School')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _page[_selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(
        // mouseCursor: SystemMouseCursors.cell,
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.amber,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(Icons.school),
            label: 'Scholl',
          ),
        ],
        selectedItemColor: Colors.blueGrey,
        showUnselectedLabels: false,
        // selectedLabelStyle: TextStyle(fontSize: 20),
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        iconSize: 30,
      ),
    );
  }
}
