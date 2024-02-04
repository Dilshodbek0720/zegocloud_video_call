import 'package:flutter/material.dart';
import 'package:zegocloud_video_call/home/home.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  String userID = '';
  String userName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Login'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (v){
                userName = v;
              },
              decoration: InputDecoration(
                hintText: 'UserName'
              ),
            ),
            TextField(
              onChanged: (v){
                userID = v;
              },
              decoration: InputDecoration(
                  hintText: 'UserId'
              ),
            ),
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Home(userName: userName, userID: userID);
              }));
            }, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
