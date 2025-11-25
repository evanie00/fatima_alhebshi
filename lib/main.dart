import 'dart:io';
import 'package:file_assignment/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Fileasgnmt extends StatefulWidget {
  const Fileasgnmt({super.key});

  @override
  State<Fileasgnmt> createState() => _FileasgnmtState();
}
void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Fileasgnmt(),
  ));}


class _FileasgnmtState extends State<Fileasgnmt> {
  bool _isvisible = true;
  final _formkey = GlobalKey<FormState>();
  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  late File file ;

  @override
  void initState() {
    super.initState();
    createDirc();
  }

  Future<void> createDirc() async {
    Directory myDirc = Directory('/storage/emulated/0/Download');
    if (!myDirc.existsSync()) {
      myDirc.createSync(recursive: true);
    }
    setState(() {
      file = File('${myDirc.path}/usersfile.txt');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // عشان يبقى النص ثابت فوق
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 65,),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 370,
                        child: TextFormField(
                          controller: con1,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                color: Colors.lightBlue.shade800,
                              ),
                            ),
                            labelText: "Username",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelStyle: TextStyle(
                              fontSize: 23,
                              color: Colors.black87,
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty || value == null){
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 30,),
                      SizedBox(
                        width: 370,
                        child: TextFormField(
                          controller: con2,
                          obscureText: _isvisible,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  _isvisible = !_isvisible;
                                });
                              },
                              icon: Icon(_isvisible?Icons.visibility_off:Icons.visibility),),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                color: Colors.lightBlue.shade800,
                              ),
                            ),
                            label: Text("Password",),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelStyle: TextStyle(
                              fontSize: 23,
                              color: Colors.black87,
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty || value == null){
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 45,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue[800],
                          fixedSize: Size(370, 60)
                        ),
                        onPressed: () async {
                          if(_formkey.currentState!.validate()){
                            _formkey.currentState!.save();
                          }
                          List<String> users = [];
                          if (file.existsSync()) {
                            String content = await file.readAsString();
                            users = content.split('\n').where((line) => line.trim().isNotEmpty).toList();
                          }

                          bool exists = users.any((line) {
                            String name = line.split(' - ')[0].trim();
                            return name.toLowerCase() == con1.text.trim().toLowerCase();
                          });

                          if (exists) {
                            _scaffoldMessengerKey.currentState!.showSnackBar(
                              SnackBar(
                                backgroundColor: Colors.red,
                                content: Text("We waved to this username"),
                                duration: Duration(seconds: 2),
                              ),
                            );
                            return;
                          }
                          await file.writeAsString(
                            '${con1.text} - ${con2.text}\n',
                            mode: FileMode.append,
                          );

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Secondpage(name: con1.text)),
                          );
                          _scaffoldMessengerKey.currentState!.showSnackBar(
                            SnackBar(
                              content: Text("The account created successfully"),
                              duration: Duration(seconds: 2),
                            ),
                          );


                          print(file.path);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextButton(onPressed: (){
                        _scaffoldMessengerKey.currentState!.showSnackBar(SnackBar(content: Text("We work in this feature"), duration: Duration(seconds: 2),));
                      }, child: Text("Already have account?",style: TextStyle(color: Colors.lightBlue[700]))),
                      SizedBox(height: 70,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
