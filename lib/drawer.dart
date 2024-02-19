import 'package:flutter/material.dart';
import 'package:flutter_basic/tab_bar.dart';

class Drawer_DrawerHeader extends StatelessWidget {
  const Drawer_DrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        //endDrawer maka akan kekanan
        child: Container(
          color: Colors.amber,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                  ),
                  child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                          // color: Colors.blue,
                          ),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: AssetImage('assets/images/coffee.jpg'),
                      ),
                      accountName: Text("GenzProgrammer"),
                      accountEmail: Text("genzprogrammer@gmail.com")),
                  // child: Container(
                  //   color: Colors.green,
                  //   child: const Text("Drawer Header"),
                  // ),
                ),
              ),
              ListTile(
                title: Text("Item 1 -> TabBar"),
                onTap: () {},
                leading: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TabBar_TabBarView()),
                    );
                  },
                  icon: Icon(Icons.settings),
                ),
              ),
              ListTile(
                title: Text("Item 2"),
                onTap: () {},
                subtitle: Text("ini subtitle 2"),
              ),
            ],
          ),
        ),
      ),
      body: const Center(child: Text('Drawer')),
    );
  }
}
