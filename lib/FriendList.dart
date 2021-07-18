import 'package:flutter/material.dart';
import 'package:internship/Chat.dart';

class FriendList extends StatelessWidget {
  String user;

  FriendList({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Messages"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          ListTile(
            contentPadding: EdgeInsets.all(5),
            selectedTileColor: Colors.blue,
            leading: Icon(Icons.person, color: Colors.lightBlueAccent,size: 35,),
            title: Text("Anushka",textAlign: TextAlign.center, style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20, fontWeight: FontWeight.w600),),
            trailing: Icon(Icons.play_arrow, color: Colors.lightBlueAccent,size: 35,),
            tileColor: Colors.white,
            enabled: true,
            onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Chat(user,"Anushka")));
            },
          ),
          SizedBox(height: 30,),
          ListTile(
            contentPadding: EdgeInsets.all(5),
            selectedTileColor: Colors.blue,
            leading: Icon(Icons.person, color: Colors.lightBlueAccent,size: 35,),
            title: Text("Saksham",textAlign: TextAlign.center, style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20, fontWeight: FontWeight.w600),),
            trailing: Icon(Icons.play_arrow, color: Colors.lightBlueAccent,size: 35,),
            tileColor: Colors.white,
            enabled: true,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Chat(user,"Saksham")));
            },
          ),
          SizedBox(height: 30,),
          ListTile(
            contentPadding: EdgeInsets.all(5),
            selectedTileColor: Colors.blue,
            leading: Icon(Icons.person, color: Colors.lightBlueAccent,size: 35,),
            title: Text("Rohan",textAlign: TextAlign.center, style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20, fontWeight: FontWeight.w600),),
            trailing: Icon(Icons.play_arrow, color: Colors.lightBlueAccent,size: 35,),
            tileColor: Colors.white,
            enabled: true,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Chat(user,"Rohan")));
            },
          ),
          SizedBox(height: 30,),
          ListTile(
            contentPadding: EdgeInsets.all(5),
            selectedTileColor: Colors.blue,
            leading: Icon(Icons.person, color: Colors.lightBlueAccent,size: 35,),
            title: Text("Shivam",textAlign: TextAlign.center, style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20, fontWeight: FontWeight.w600),),
            trailing: Icon(Icons.play_arrow, color: Colors.lightBlueAccent,size: 35,),
            tileColor: Colors.white,
            enabled: true,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Chat(user,"Shivam")));
            },
          ),

        ],
      ),
    );
  }
}
