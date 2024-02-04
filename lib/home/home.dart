import 'package:flutter/material.dart';
import 'package:zegocloud_video_call/call/my_call.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.userName, required this.userID});
  final String userID;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return MyCallPage(callID: '1', userID: userID, userName: userName,);
            }));
          },
          child: Text("Call"),
        ),
      ),
    );
  }
}
