import 'package:flutter/material.dart';

class ZNavbar extends StatelessWidget {
  const ZNavbar({super.key, this.isActive = true});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: const Color.fromARGB(255, 66, 61, 232),
            icon: Icon(
              Icons.chat_bubble_rounded,
              color: isActive ? const Color.fromARGB(255, 68, 33, 243) : Colors.grey,
            ),
            label: "Chat"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded),
            label: "People",
            backgroundColor: Colors.yellow),
        const BottomNavigationBarItem(
          icon: Icon(Icons.tab_rounded),
          label: "Stories",
          backgroundColor: Colors.blue,
        ),
      ],
    );
  }
}
