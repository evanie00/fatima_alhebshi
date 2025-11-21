import 'package:assignment2/page2.dart';
import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Assignment2(),
  ));
}
class _Assignment2State extends State<Assignment2> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text("TextField"),
        titleTextStyle: TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: controller1,
                decoration: InputDecoration(
                  label: Text("Enter your text"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: controller2,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            SizedBox(height: 33,),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    controller2.text = controller1.text;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 60),
                  backgroundColor: Colors.blueGrey[100],
                ),
                child: Text("Print", style: TextStyle(color: Colors.black45),)
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(message: controller1.text,)));
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 60),
                  backgroundColor: Colors.blueGrey[100],
                ),
                child: Text("Move to the secound page", style: TextStyle(color: Colors.black45),)
            ),
          ],
        ),
      ),
    );
  }
}
