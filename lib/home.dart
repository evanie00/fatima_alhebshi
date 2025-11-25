import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 370,
            child: TextField(
              controller: con1,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),),
                  focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.lightBlue.shade800,
                  ),
                ),
                labelText: "Enter your text",
              ),
            ),
          ),
          SizedBox(height: 30,),
          SizedBox(
            width: 370,
            child: TextField(
              readOnly: true,
              controller: con2,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.lightBlue.shade800,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 33,),
          ElevatedButton(
              onPressed: (){
                setState(() {
                  con2.text = con1.text;
                });
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(250, 60),
                backgroundColor:  Colors.red[100],
              ),
              child: Text("Print", style: TextStyle(color: Colors.grey),)
          ),
        ],
      ),
    );
  }
}