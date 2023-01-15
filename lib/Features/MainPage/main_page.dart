import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 56, 56, 56),
        title: const Text('Lista'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: const Color.fromARGB(255, 56, 56, 56),
        // Selected items style
        selectedItemColor: Colors.blueAccent,
        selectedIconTheme: const IconThemeData(size: 32),
        // End of selected items style
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_outlined),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_added_outlined),
            label: 'Wykonane',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete_outline),
            label: 'Usunięte',
          ),
        ],
        onTap: (newIndex) {
          setState(() {
            _selectedIndex = newIndex;
          });
        },
      ),
      body: Builder(builder: (context) {
        if (_selectedIndex == 0) {
          return Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Sortowanie:',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          );
        } else if (_selectedIndex == 1) {
          return const Center(
            child: Text('b'),
          );
        } else if (_selectedIndex == 2) {
          return const Center(
            child: Text('c'),
          );
        } else {
          return const Text('nope');
        }
      }),
    );
  }
}
