import 'package:flutter/material.dart';
import 'package:newproject/view/homePage.dart';


class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Top images row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/50'), // Replace with actual images
                  radius: 24,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/50'),
                  radius: 24,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/50'),
                  radius: 24,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/50'),
                  radius: 24,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/50'),
                  radius: 24,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // App name
          Text(
            'i5 fun',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(height: 60),
          // Phone number input
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 65),
                  child: Text(
                    'Enter phone number',
                    style: TextStyle(
                      fontSize: 25,

                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 35,right: 35),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          '+91',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      hintText: 'Phone number',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: InkWell(
                        onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>MemberPage()));
                        },
                          child: Icon(Icons.arrow_forward, color: Colors.blue)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 150),
          // Facebook and Google buttons
          Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 50,right: 50),
                child: Container(
                  height: 30,
                    color: Colors.blue,
                  child: Row(
                    children: [

                      Icon(Icons.facebook),
                      SizedBox(width: 100,),
                      Text('Facebook',style: TextStyle(color: Colors.white),),
                    ],
                  )
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 50),
                child: Container(
                  height: 30,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(Icons.g_mobiledata_sharp),
                      SizedBox(width: 100,),
                      Text('Google')
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
