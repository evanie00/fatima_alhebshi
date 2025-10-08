import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
          title: "مسبحة",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter1 = 0;
  void update_counter1() {
    setState(() {
      counter1++;
    });
  }
  int counter2 = 0;
  void update_counter2() {
    setState(() {
      counter2++;
    });
  }
  int counter3 = 0;
  void update_counter3() {
    setState(() {
      counter3++;
    });
  }
  int counter4 = 0;
  void update_counter4() {
    setState(() {
      counter4++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5EEDC),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFFC2A68C),
        title: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.transparent,
                  width: 50,
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/img1.png'),
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(
              "مسبحة",
              style: TextStyle(
                fontFamily: 'Africa',
                fontSize: 30,
                color:  Color(0xFF344F1F),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 80,right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ElevatedButton(
                onPressed: update_counter1,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5D866C),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  padding: EdgeInsets.all(25)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "$counter1",
                        style: TextStyle(
                        fontSize: 25,
                        color:  Color(0xFFF5EEDC),
                        ),
                    ),
                    Text(
                      "سبحان اللَّه",
                      style: TextStyle(
                        fontFamily: 'Africa',
                        fontSize: 30,
                        color:  Color(0xFFF5EEDC),
                      ),
                    ),
                  ]
                )
            ),
            SizedBox(height: 25,),
            ElevatedButton(
                onPressed: update_counter2,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5D866C),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                    ),
                    padding: EdgeInsets.all(25)
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$counter2",
                        style: TextStyle(
                          fontSize: 25,
                          color:  Color(0xFFF5EEDC),
                        ),
                      ),
                      Text(
                        "الحمدللَّه",
                        style: TextStyle(
                          fontFamily: 'Africa',
                          fontSize: 30,
                          color:  Color(0xFFF5EEDC),
                        ),
                      ),
                    ]
                )
            ),
            SizedBox(height: 25,),
            ElevatedButton(
                onPressed: update_counter3,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5D866C),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                    ),
                    padding: EdgeInsets.all(25)
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$counter3",
                        style: TextStyle(
                          fontSize: 25,
                          color:  Color(0xFFF5EEDC),
                        ),
                      ),
                      Text(
                        "لا إله إلا اللَّه",
                        style: TextStyle(
                          fontFamily: 'Africa',
                          fontSize: 30,
                          color:  Color(0xFFF5EEDC),
                        ),
                      ),
                    ]
                )
            ),
            SizedBox(height: 25,),
            ElevatedButton(
                onPressed: update_counter4,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5D866C),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                    ),
                    padding: EdgeInsets.all(25)
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$counter4",
                        style: TextStyle(
                          fontSize: 25,
                          color:  Color(0xFFF5EEDC),
                        ),
                      ),
                      Text(
                        "اللَّه أكبر",
                        style: TextStyle(
                          fontFamily: 'Africa',
                          fontSize: 30,
                          color:  Color(0xFFF5EEDC),
                        ),
                      ),
                    ]
                )
            ),
            SizedBox(height: 80,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter4 = 0;
                  counter3 = 0;
                  counter1 = 0;
                  counter2 = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFC2A68C),
                shape: CircleBorder(),
                elevation: 5,
                padding: EdgeInsets.all(55),
              ),
              child: SizedBox.shrink(),
            )
          ],
        ),
      ),
    );
  }
}
