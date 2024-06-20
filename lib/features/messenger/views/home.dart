import 'package:flutter/material.dart';
import 'package:z_messenger/features/messenger/views/widgtes/ChatWidget.dart';
import 'package:z_messenger/features/messenger/views/widgtes/dailyNotes.dart';
import 'package:z_messenger/features/messenger/views/widgtes/drawer.dart';
import 'package:z_messenger/features/messenger/views/widgtes/navbar.dart';

class MessengerHome extends StatelessWidget {
  const MessengerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger',
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      home: Scaffold(
        bottomNavigationBar: const ZNavbar(),
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
        body: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 8, bottom: 8),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Text("Search")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 110,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 13, right: 13, top: 8, bottom: 8),
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        DailyNotes(),
                        SizedBox(width: 10),
                        DailyNotes(
                          note: "Eid Mubarak",
                          user: "Abid",
                        ),
                        SizedBox(width: 10),
                        DailyNotes(
                          note: "Hi",
                          user: "Abid",
                        ),
                        SizedBox(width: 10),
                        DailyNotes(
                          note: "Gooo",
                          user: "Abid",
                        ),
                        SizedBox(width: 10),
                        DailyNotes(
                          note: "Bangladesh",
                          user: "Abid",
                        ),
                        SizedBox(width: 10),
                        DailyNotes(
                          note: "BD vs Ind",
                          user: "Abid",
                        ),
                        SizedBox(width: 10),
                        DailyNotes(
                          note: "Good Day",
                          user: "Abid",
                        ),
                        SizedBox(width: 10),
                      ]),
                ),
              ),
              const ChatWidget(
                  message: "Ki obostha? Flutter kemon chole?",
                  user: "Elite",
                  read: true,
                  time: "09:48 PM"),
              const ChatWidget(
                  message: "Ki obostha? Flutter kemon chole?",
                  user: "Elite",
                  time: "09:48 PM"),
              const ChatWidget(
                  message: "Ki obostha? Flutter kemon chole?",
                  user: "Elite",
                  time: "09:48 PM"),
            ],
          ),
        ]),
      ),
    );
  }
}
