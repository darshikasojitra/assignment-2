import 'package:flutter/material.dart';

class dashboard_screen extends StatefulWidget {
  const dashboard_screen({super.key});

  @override
  State<dashboard_screen> createState() => _dashboard_screenState();
}

class _dashboard_screenState extends State<dashboard_screen> {
  int myIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.amber);

  static const List<Widget> widgetList = [
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Vendors',
      style: optionStyle,
    ),
    Text(
      'List',
      style: optionStyle,
    ),
    Text(
      'Category',
      style: optionStyle,
    ),
    Text(
      'More',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.amber,
                child: Text(
                  'A',
                  style: TextStyle(color: Colors.blue, fontSize: 40.0),
                ),
              ),
              accountName: Text(
                'abc',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              accountEmail: Text(
                'abc11@gmail.com',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payment method'),
            ),
            ListTile(
              leading: Icon(Icons.house),
              title: Text('Addresses'),
            ),
            ListTile(
              leading: Icon(Icons.password),
              title: Text('password'),
            ),
            ListTile(
              leading: Icon(Icons.home_filled),
              title: Text('Household'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('logout'),
            ),
          ],
        ),
      ),
      body: Center(child: widgetList[myIndex]),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          selectedItemColor: Colors.amber[800],
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Vendors',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'list',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              label: 'more',
            ),
          ]),
    );
  }
}
