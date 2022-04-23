import 'package:chatapp/presentation/screens/friends.dart';
import 'package:chatapp/presentation/screens/messages.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedPage = 0;
  final List<Widget> pageList = [
    Messages(),
    Friends(),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedPage,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage ,
        onTap: (index) {
           setState(() {
            _selectedPage = index;
          });
        },
        items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.message_outlined,
                ),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_outlined),
                label: 'Friends',
              ),
             
            ],),
    );
  }
}
