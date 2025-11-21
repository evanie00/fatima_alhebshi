import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 80, color: Colors.grey[400],),
          SizedBox(height: 10,),
          Text("Home", style: TextStyle(color: Colors.grey, fontSize: 20),),
        ],
      ),
    );
  }
}
