import 'package:flutter/material.dart';

class RecentChatsList extends StatelessWidget {
  final List<Map<String, String>> recentChats = [
    {'name': 'Mohammed Hassan', 'message': 'Hi!', 'time': '12:43'},
    {'name': 'Mohammed Hassan', 'message': 'Hi!', 'time': '12:43'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics:  NeverScrollableScrollPhysics(),
      itemCount: recentChats.length,
      itemBuilder: (context, index) {
        final chat = recentChats[index];
        return ListTile(
          leading:  const CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'), // Replace with your image asset
          ),
          title: Text(chat['name']!),
          subtitle: Text(chat['message']!),
          trailing: Text(chat['time']!),      
        );
      },
    );
  }
}
