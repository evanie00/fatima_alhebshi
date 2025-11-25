import 'package:assignment5/account.dart';
import 'package:assignment5/explore.dart';
import 'package:assignment5/home.dart';
import 'package:assignment5/settings.dart';
import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _Assignment5State();
}

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Assignment5(),));
}

class _Assignment5State extends State<Assignment5> {
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
