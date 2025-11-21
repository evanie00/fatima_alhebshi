import 'package:assignment4/account.dart';
import 'package:assignment4/explore.dart';
import 'package:assignment4/home.dart';
import 'package:assignment4/settings.dart';
import 'package:flutter/material.dart';
class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Assignment4(),));
}
class _Assignment4State extends State<Assignment4> {
  int myindex = 0;
  final List<Widget> _pages = [
    Home(),
    Explore(),
    Settings(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red[300],
      ),
      body: IndexedStack(
        index: myindex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myindex,
        onTap: (index){
          setState(() {
            myindex = index;
          });
        },
        iconSize: 35,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red[300],
        items : [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
