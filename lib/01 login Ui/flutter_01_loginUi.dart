// ignore_for_file: unused_import,prefer_const_literals_to_create_immutables, file_names, camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use, unused_local_variable, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';

class flutter_01_loginUi extends StatefulWidget {
  const flutter_01_loginUi({super.key});

  @override
  State<flutter_01_loginUi> createState() => _flutter_01_loginUiState();
}

class _flutter_01_loginUiState extends State<flutter_01_loginUi> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(
                Icons.android,
                size: 100,
              ),
            ),

            // hello again

            SizedBox(height: 30,),

            Text(
              'Hey Yoooooo!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 8,
            ),

            Text('Welcome! we glad you are back',
                style: TextStyle(fontSize: 18)),

            SizedBox(
              height: 25,
            ),
            // email text field

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white)),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            // password textfield

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white)),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                ),
              ),
            ),

            // SizedBox(
            //   height: 1,
            // ),


            Padding(

              padding: EdgeInsets.only(top: 0 , left: w/1.8),
              child: TextButton(onPressed: (){}, child: Text('Forgot Password?'),
              ),),

            //signup buttton

            Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Container(
                height: 50,
                width: w / 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 41, 147, 129))),
                ),
              ),
            ),

            // SizedBox(
            //   height: 10,
            // ),

            // not a member register now

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?\t'),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register now',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),


            




          ],
        ),
      ),
    );
  }
}




// main .dart code 

// // ignore_for_file: prefer_const_constructors, unused_import

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/01%20login%20Ui/flutter_01_loginUi.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:flutter_01_loginUi(),
//     );
      
//   }
// }
