import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Map<String, dynamic>> menuItems = [
    {
      "title": "Home",
      "icon": Icons.home,
    },
    {
      "title": "Chart",
      "icon": Icons.shopping_cart,
    },
    {
      "title": "Favorites",
      "icon": Icons.star_border,
    },
    {
      "title": "Account",
      "icon": Icons.person,
    },
  ];

  int _selectedItem = 0;
  String _text = "Home";

  void _onItemTapped(int index) {
    setState(() {
      _selectedItem = index;
      _text = menuItems[index]["title"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text(
          'Kamu klik: $_text',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black87,
        elevation: 32,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: menuItems
            .map(
              (item) => BottomNavigationBarItem(
                icon: Icon(item["icon"]),
                label: item["title"],
                activeIcon: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  child: Icon(item["icon"]),
                ),
              ),
            )
            .toList(),
        currentIndex: _selectedItem,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}