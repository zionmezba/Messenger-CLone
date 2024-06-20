import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
    required this.user,
    required this.message,
    required this.time,
    this.read = false,
    this.image = "images/avatars/avatar1.jpeg",
  });

  final String user, message, time, image;
  final bool read;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(radius: 30, backgroundImage: AssetImage(image)),
      title: Text(user,
          style: read
              ? const TextStyle(fontWeight: FontWeight.bold)
              : const TextStyle(fontWeight: FontWeight.w900),
          maxLines: 1),
      subtitle: Text(message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: read
              ? const TextStyle(color: Colors.grey)
              : TextStyle(
                  color: Colors.grey[100], fontWeight: FontWeight.bold)),
      trailing: Text(time,
          style: read
              ? TextStyle(color: Colors.grey[400])
              : TextStyle(
                  color: Colors.grey[100], fontWeight: FontWeight.bold)),
    );
  }
}
