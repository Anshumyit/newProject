import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Profile Header
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [HexColor("#ddeeeb"),HexColor("#73dec4")],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      // Profile Image
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://via.placeholder.com/150", // Replace with actual image URL
                        ),
                      ),
                      SizedBox(width: 16),
                      // User Information
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Raghuveer sonkar",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "ID: 12666433",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "+91 9515297850",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      // Right Arrow for Settings or Edit
                      Icon(
                        Icons.chevron_right,
                        size: 28,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Followers/Following/Visitors Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "102",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "21",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "54",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          "Visitors",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          // Menu Options
          Expanded(
            child: ListView(
              children: [
                buildMenuItem("Wallet", Icons.account_balance_wallet, ""),
                buildMenuItem("Invite Friends", Icons.people, "Earn Coins"),
                buildMenuItem("SVIP", Icons.star, "Get more!"),
                buildMenuItem("My Items", Icons.shopping_cart, "View Items"),
                buildMenuItem("Nobel", Icons.emoji_events, "Achievement"),
                buildMenuItem("QP", Icons.favorite, "Voucher"),
                buildMenuItem("Family", Icons.group, "My Connections"),
                buildMenuItem("Store", Icons.store, ""),
                Divider(thickness: 1),
                buildMenuItem("Language", Icons.language, "English"),
                buildMenuItem("Feedback", Icons.feedback, ""),
                buildMenuItem("Settings", Icons.settings, ""),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(String title, IconData icon, String subtitle) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.teal,
        size: 28,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      subtitle: subtitle.isNotEmpty
          ? Text(
        subtitle,
        style: TextStyle(fontSize: 12, color: Colors.black54),
      )
          : null,
      trailing: Icon(
        Icons.chevron_right,
        size: 24,
        color: Colors.black54,
      ),
      onTap: () {
        // Handle navigation or actions
      },
    );
  }
}
