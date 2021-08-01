import 'package:flutter/material.dart';
import 'package:internship/Username.dart';
import 'Chat.dart';
import 'FriendList.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Internship Assignment",
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'username',
      routes: {
        'username': (context) => UserName(),
        'friendlist': (context) => FriendList(user: '',),
        'chats': (context) => Chat("",""),

      },
    );
  }
}

