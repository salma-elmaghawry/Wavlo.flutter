import 'package:flutter/material.dart';

class NewChatList extends StatelessWidget {
  final List<Map<String, String>> newChats = [
    {'name': 'Gina Westervelt', 'image': 'assets/avatar1.png'},
    {'name': 'Ryan Calzoni', 'image': 'assets/avatar2.png'},
    {'name': 'Angel', 'image': 'assets/avatar3.png'},
    {'name': 'Morin', 'image': 'assets/avatar4.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: newChats.map((chat) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(chat['image']!),
                ),
                SizedBox(height: 8),
                Text(chat['name']!, style: TextStyle(fontSize: 12)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
