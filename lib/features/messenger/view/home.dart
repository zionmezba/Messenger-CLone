import 'package:flutter/material.dart';
import 'package:z_messenger/features/messenger/view/people.dart';
import 'package:z_messenger/features/messenger/view/stories.dart';
import 'package:z_messenger/features/messenger/view/widgtes/drawer.dart';
import 'package:z_messenger/features/messenger/view/widgtes/navbar.dart';
import 'package:z_messenger/features/messenger/view/widgtes/messenger_chat.dart';

class MessengerHome extends StatelessWidget {
  const MessengerHome({super.key});
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    final views = [const MessengerChat(), const People(), const Stories()];
    return MaterialApp(
      title: 'Messenger',
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      home: Scaffold(
        bottomNavigationBar: ZNavbar(currentIndex: currentIndex),
        drawer: const ZDrawer(),
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Messenger',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.edit,
                color: Colors.white,
              )
            ],
          ),
          backgroundColor: Colors.black,
        ),
        body: views[currentIndex],
      ),
    );
  }
}
