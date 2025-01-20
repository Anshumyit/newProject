import 'package:flutter/material.dart';


class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 217,top: 5),
              child: Text('Recent Updates',
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 7,),
            // Recent Updates Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildRecentUpdate('My Story', 'https://via.placeholder.com/150', true),
                  SizedBox(width: 7,),
                  _buildRecentUpdate('Black beast', null, false, backgroundColor: Colors.black),
                  SizedBox(width: 7,),
                  _buildRecentUpdate('Hearts', null, false, icon: Icons.favorite, backgroundColor: Colors.red),
                ],
              ),
            ),
            const Divider(),
            // Chat List Section
            Expanded(
              child: ListView(
                children: [
                  _buildChatTile('BLACK BEAST', 'hi', '11:11 AM', 'https://via.placeholder.com/150'),
                  _buildChatTile('Official Dr.Pk', 'hello', '10:34 PM', 'https://via.placeholder.com/150'),
                  _buildChatTile('basha', 'how are you?', '05:04 AM', 'https://via.placeholder.com/150'),
                  _buildChatTile('Official Alam', 'good evening', '10:55 PM', 'https://via.placeholder.com/150'),
                  _buildChatTile('hi', 'howdy', '01:01 PM', 'https://via.placeholder.com/150'),
                  _buildChatTile('King Akhil', 'welcome!', '12:35 PM', 'https://via.placeholder.com/150'),
                ],
              ),
            ),
          ],
        ),
      );

  }

  // Widget for Recent Updates
  Widget _buildRecentUpdate(String label, String? imageUrl, bool isMyStory,
      {IconData? icon, Color backgroundColor = Colors.grey}) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: backgroundColor,
              backgroundImage: imageUrl != null ? NetworkImage(imageUrl) : null,
              child: icon != null ? Icon(icon, color: Colors.white, size: 30) : null,
            ),
            if (isMyStory)
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.add, size: 16, color: Colors.white),
                ),
              ),
          ],
        ),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  // Widget for Chat Tile
  Widget _buildChatTile(String name, String message, String time, String avatarUrl) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(avatarUrl),
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(message),
      trailing: Text(time, style: const TextStyle(fontSize: 12, color: Colors.grey)),
    );
  }
}
