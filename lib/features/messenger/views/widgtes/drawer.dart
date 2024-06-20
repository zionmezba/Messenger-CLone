import 'package:flutter/material.dart';

class ZDrawer extends StatelessWidget {
  const ZDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("images/avatars/avatar1.jpeg"),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Zion Mezba",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.arrow_drop_down_outlined),
                    )
                  ],
                ),
                Icon(Icons.settings)
              ],
            ),
          ),
          const ListTile(
            title: Text("Chats"),
            leading: Icon(Icons.message_rounded),
          ),
          const ListTile(
            title: Text("Marketplace"),
            leading: Icon(Icons.house_rounded),
          ),
          const ListTile(
            title: Text("Message Requests"),
            leading: Icon(Icons.message_outlined),
          ),
          const ListTile(
            title: Text("Archive"),
            leading: Icon(Icons.archive_rounded),
          ),
          // const SizedBox(height: 10),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Communites",
                    style: TextStyle(color: Color.fromARGB(255, 111, 111, 111)),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text("Edit",
                          style: TextStyle(color: Colors.blue)))
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10, bottom: 8),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image(
                    image: AssetImage("images/avatars/avatar1.jpeg"),
                    height: 45,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Flutter Developers",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
