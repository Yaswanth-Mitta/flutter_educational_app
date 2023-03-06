// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_unnecessary_containers, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_application_1/02%20Educational%20App/screens/home_screen.dart';

class welcome_screen extends StatelessWidget {
  const welcome_screen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        width: w,
        height: h,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: h / 1.6,
                  width: w,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: h / 1.6,
                  width: w,
                  decoration: BoxDecoration(
                      color: Color(0xFF674AEF),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(70))),
                  child: Center(
                    child: Image.asset(
                      'images/books.png',
                      scale: 0.8,
                    ),
                  ),
                ),
              ],
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: w,
                height: h / 2.666,
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(top: 40, bottom: 30),
                width: w,
                height: h / 2.666,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(70))),
                child: Column(
                  children: [
                    Text(
                      'Learning is Everything',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'Learning with Pleasure with Dear Programmer, Whereever you are.',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.6),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Material(
                      color: Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Container(
                          padding: EdgeInsetsDirectional.symmetric(
                              vertical: 15, horizontal: 80),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Positioned(

            //   bottom: 0,

            //   child: Container(
            //     width: w,
            //     height: h / 2.666,
            //     color: Color(0xFF674AEF),

            //   ),
            //   )
          ],
        ),
      ),
    );
  }
}


// https://www.youtube.com/watch?v=ucwBcTgxyME
// upto 0 to 9 minutes 
