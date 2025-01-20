import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:newproject/view/contact.dart';
import 'package:newproject/view/message.dart';
import 'package:newproject/view/person_click.dart';
import 'package:newproject/view/voice.dart';
import 'package:newproject/viewmodel/bottonController.dart';

// MainScreen Widget
class MainScreen extends StatelessWidget {
  final MainScreenController controller = Get.put(MainScreenController());

  final List<Widget> screens = [
    MessageScreen(),
    VoiceScreen(),
    ProfileScreen(),
  ];

  final List<String> appBarTitles = [
    'Messages',
    'Voice Calls',
    'Profile',
  ];

  final List<Widget> leadings = [
    GestureDetector(
      onTap: () {
        // Action when tapping on the person icon
       Get.to(UserProfileScreen());
        // You can replace this with any action you want, for example, navigating to a different screen
      },
      child: Icon(Icons.person), // Person icon for Messages
    ),
    Icon(Icons.voice_chat),
    Icon(Icons.menu_sharp),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Reactive AppBar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight), // Standard AppBar height
        child: Obx(() => AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: HexColor("#6deeae"),
          title: Text(appBarTitles[controller.currentIndex.value]),
          leading: leadings[controller.currentIndex.value], // Use the dynamic leading widget
          centerTitle: true,
          elevation: 0,
        )),
      ),

      // Reactive Body
      body: Obx(() => screens[controller.currentIndex.value]),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          // Bottom Navigation Bar
          Container(
            height: 80,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [HexColor("#bfd4c4"), HexColor("#317bbc")],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
          ),
          // Floating Action Buttons positioned above the navigation bar
          Positioned(
            top: -30, // Adjust to control button height above the bar
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Message Button
                FloatingActionButton(
                  onPressed: () => controller.changeScreen(0),
                  heroTag: 'message', // Unique hero tag
                  backgroundColor: Colors.pink,
                  child: Icon(Icons.mail, color: Colors.white),
                  shape: CircleBorder(),
                ),
                // Voice Button
                FloatingActionButton(
                  onPressed: () => controller.changeScreen(1),
                  heroTag: 'voice', // Unique hero tag
                  backgroundColor: Colors.red,
                  child: Icon(Icons.mic, color: Colors.white),
                  shape: CircleBorder(),
                ),
                // Person Button
                FloatingActionButton(
                  onPressed: () => controller.changeScreen(2),
                  heroTag: 'person', // Unique hero tag
                  backgroundColor: Colors.green,
                  child: Icon(Icons.person, color: Colors.white),
                  shape: CircleBorder(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
