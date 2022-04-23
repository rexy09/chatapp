import 'package:chatapp/presentation/screens/chat_room.dart';
import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  Friends({Key? key}) : super(key: key);

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: const Text(
          'Friends',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
            color: Colors.black54,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        color: Colors.white70,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (BuildContext context) => ChatRoom()));
              },
              minVerticalPadding: 20,
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/img/image_1.png"),
                radius: 25,
              ),
              title: Text("Full Name"),
              // subtitle: Text("Message Text"),
            );
          },
        ),
      ),
    );
  }
}