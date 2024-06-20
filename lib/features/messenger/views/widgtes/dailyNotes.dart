import 'package:flutter/material.dart';

class DailyNotes extends StatelessWidget {
  const DailyNotes(
      {super.key,
      this.note = "Share a thought",
      this.user = "Your Note",
      this.image = "images/avatars/avatar1.jpeg"});

  final String? note, user, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(image!),
              ),
              Container(
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      note!,
                      style: TextStyle(color: Colors.grey[400], fontSize: 8),
                    ),
                  )),
            ]),
            Text(user!,
                style: TextStyle(color: Colors.grey[400], fontSize: 13)),
          ],
        ),
      ],
    );
  }
}
