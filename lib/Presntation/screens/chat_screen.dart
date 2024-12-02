import 'package:flutter/material.dart';
import 'package:gdg_test/Presntation/screens/nav_page.dart';
import 'package:gdg_test/Presntation/widgets/chat/new_chat_list.dart';
import 'package:gdg_test/Presntation/widgets/chat/recent_chats_list.dart';


class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:  const Text(
          'Chats',
          style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const  Icon(Icons.notifications, color: Colors.grey),
            onPressed: () {},
          ),
        ],
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SearchBar(),
             const SizedBox(height: 16),
             const Text(
              'Recent Chats',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RecentChatsList(),
             const SizedBox(height: 16),
             const Text(
              'New Chat',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            NewChatList(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
