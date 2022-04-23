import 'package:chatapp/data/models/chat_users_model.dart';
import 'package:chatapp/presentation/screens/chat_room.dart';
import 'package:chatapp/presentation/screens/signin_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Messages extends StatefulWidget {
  Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "images/userImage1.jpeg",
        time: "Now"),
    ChatUsers(
        name: "Glady's Murphy",
        messageText: "That's Great",
        imageURL: "images/userImage2.jpeg",
        time: "Yesterday"),
    ChatUsers(
        name: "Jorge Henry",
        messageText: "Hey where are you?",
        imageURL: "images/userImage3.jpeg",
        time: "31 Mar"),
    ChatUsers(
        name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        imageURL: "images/userImage4.jpeg",
        time: "28 Mar"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL: "images/userImage5.jpeg",
        time: "23 Mar"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL: "images/userImage6.jpeg",
        time: "17 Mar"),
    ChatUsers(
        name: "Andrey Jones",
        messageText: "Can you please share the file?",
        imageURL: "images/userImage7.jpeg",
        time: "24 Feb"),
    ChatUsers(
        name: "John Wick",
        messageText: "How are you?",
        imageURL: "images/userImage8.jpeg",
        time: "18 Feb"),
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "images/userImage1.jpeg",
        time: "Now"),
    ChatUsers(
        name: "Glady's Murphy",
        messageText: "That's Great",
        imageURL: "images/userImage2.jpeg",
        time: "Yesterday"),
    ChatUsers(
        name: "Jorge Henry",
        messageText: "Hey where are you?",
        imageURL: "images/userImage3.jpeg",
        time: "31 Mar"),
    ChatUsers(
        name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        imageURL: "images/userImage4.jpeg",
        time: "28 Mar"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL: "images/userImage5.jpeg",
        time: "23 Mar"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL: "images/userImage6.jpeg",
        time: "17 Mar"),
    ChatUsers(
        name: "Andrey Jones",
        messageText: "Can you please share the file?",
        imageURL: "images/userImage7.jpeg",
        time: "24 Feb"),
    ChatUsers(
        name: "John Wick",
        messageText: "How are you?",
        imageURL: "images/userImage8.jpeg",
        time: "18 Feb"),
  ];

  Widget _conversation({name, messageText, time, isRead}) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => ChatRoom(name: name),
          ),
        );
      },
      minVerticalPadding: 15,
      leading: const CircleAvatar(
        backgroundImage: AssetImage("assets/img/image_1.png"),
        radius: 25,
      ),
      title: Text(name),
      subtitle: Text(
        messageText,
        style:
            TextStyle(fontWeight: isRead ? FontWeight.bold : FontWeight.normal),
      ),
      trailing: Text(
        time,
        style:
            TextStyle(fontWeight: isRead ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: const Text(
          'Messages',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
            color: Colors.black54,
          ),
           InkWell(
            onTap: (){
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => SignInDemo(),
                ),
              );
            },
            child:  const CircleAvatar(
              backgroundImage: AssetImage("assets/img/image_1.png"),
              radius: 20,
            ),
          ),
          // Image.asset("assets/img/image_1.png", height: 50, width: 50),
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
          itemCount: chatUsers.length,
          itemBuilder: (BuildContext context, int index) {
            return _conversation(
              name: chatUsers[index].name,
              messageText: chatUsers[index].messageText,
              // imageUrl: chatUsers[index].imageURL,
              time: chatUsers[index].time,
              isRead: (index == 0 || index == 3) ? true : false,
            );
          },
        ),
      ),
    );
  }
}


// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';

// class CupertinoNavigationBarDemo extends StatelessWidget {
//   const CupertinoNavigationBarDemo({Key key}) : super(key: key);

//   static const String homeRoute = '/home';
//   static const String secondPageRoute = '/home/item';

//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       restorationScopeId: 'navigator',
//       initialRoute: CupertinoNavigationBarDemo.homeRoute,
//       onGenerateRoute: (settings) {
//         switch (settings.name) {
//           case CupertinoNavigationBarDemo.homeRoute:
//             return _NoAnimationCupertinoPageRoute<void>(
//               title: GalleryLocalizations.of(context)
//                   .demoCupertinoNavigationBarTitle,
//               settings: settings,
//               builder: (context) => _FirstPage(),
//             );
//             break;
//           case CupertinoNavigationBarDemo.secondPageRoute:
//             final arguments = settings.arguments as Map<dynamic, dynamic>;
//             final title = arguments['pageTitle'] as String;
//             return CupertinoPageRoute<void>(
//               title: title,
//               settings: settings,
//               builder: (context) => _SecondPage(),
//             );
//             break;
//         }
//         return null;
//       },
//     );
//   }
// }

// class _FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       child: CustomScrollView(
//         slivers: [
//           const CupertinoSliverNavigationBar(
//             automaticallyImplyLeading: false,
//           ),
//           SliverPadding(
//             padding:
//                 MediaQuery.of(context).removePadding(removeTop: true).padding,
//             sliver: SliverList(
//               delegate: SliverChildBuilderDelegate(
//                 (context, index) {
//                   final title = GalleryLocalizations.of(context)
//                       .starterAppDrawerItem(index + 1);
//                   return ListTile(
//                     onTap: () {
//                       Navigator.of(context).restorablePushNamed<void>(
//                         CupertinoNavigationBarDemo.secondPageRoute,
//                         arguments: {'pageTitle': title},
//                       );
//                     },
//                     title: Text(title),
//                   );
//                 },
//                 childCount: 20,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: const CupertinoNavigationBar(),
//       child: Container(),
//     );
//   }
// }

// /// A CupertinoPageRoute without any transition animations.
// class _NoAnimationCupertinoPageRoute<T> extends CupertinoPageRoute<T> {
//   _NoAnimationCupertinoPageRoute({
//     @required WidgetBuilder builder,
//     RouteSettings settings,
//     String title,
//   }) : super(
//           builder: builder,
//           settings: settings,
//           title: title,
//         );

//   @override
//   Widget buildTransitions(
//     BuildContext context,
//     Animation<double> animation,
//     Animation<double> secondaryAnimation,
//     Widget child,
//   ) {
//     return child;
//   }
// }

