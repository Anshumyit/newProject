import 'package:flutter/material.dart';
import 'package:newproject/view/bottombar.dart';

class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Members'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            // Avatar with camera icon
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(Icons.person, size: 50, color: Colors.grey),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.camera_alt, color: Colors.white, size: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text('Avatar *', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 50),
            // Nickname field with label in the same row
            Row(
              children: [
                Text('Nick Name *', style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                SizedBox(width: 10), // Space between label and text field
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter nickname",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero, // Added rounded border
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('Country *', style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                SizedBox(width: 10), // Space between label and text field
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.only(left: 22),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Select a county",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero, // Added rounded border
                          borderSide: BorderSide(
                            color: Colors.white, // White border color

                          ),
                        ),
                        suffixIcon: Icon(Icons.arrow_forward_ios)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 270), // Space between nickname and submit button
            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text('SUBMIT', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
