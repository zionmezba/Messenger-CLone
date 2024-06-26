import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class ZNavbar extends StatelessWidget {
  const ZNavbar({super.key, this.isActive = true, required this.currentIndex});
  final bool isActive;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: Colors.black,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: const Color.fromARGB(255, 66, 61, 232),
            icon: Icon(
              Iconsax.message_21,
              color: isActive
                  ? const Color.fromARGB(255, 68, 33, 243)
                  : Colors.grey,
            ),
            label: "Chat"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded),
            label: "People",
            backgroundColor: Colors.yellow),
        const BottomNavigationBarItem(
          icon: Icon(Iconsax.slider_horizontal4),
          label: "Stories",
          backgroundColor: Colors.blue,
        ),
      ],
    );
  }
}
