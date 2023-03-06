// ignore_for_file: unused_import, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unnecessary_string_interpolations, dead_code

import 'package:flutter/material.dart';
import 'package:flutter_application_1/02%20Educational%20App/widgets/description_section.dart';
import 'package:flutter_application_1/02%20Educational%20App/widgets/videos_section.dart';

class CourseScreen extends StatefulWidget {
// [videoList]
  String img, vid;
  CourseScreen(this.img, this.vid);

  // String img , vid;
  // CourseScreen(this.img , this.vid);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isvideosection = true;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    // bool isVideoSection = true;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0.1,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 1),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              color: Color(0xFF674AEF),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: w,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFF5F3FF),
                image: DecorationImage(
                  image: AssetImage('images/${widget.img}.png'),
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Color(0xFF674AEF),
                    size: 40,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${widget.img} complete beginer course',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Created by ${widget.img} Offical developers',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.7)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '${widget.vid}',
              // 'hel',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    // color: Color(0xFF674AEF),

                    color: isvideosection
                        ? Color(0xFF674AEF)
                        : Color(0xFF674AEF).withOpacity(0.6),

                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // isvideosection = true;
                          isvideosection = !isvideosection;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                        child: Text(
                          'Videos',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    // color: Color(0xFF674AEF),
                    color: isvideosection
                        ? Color(0xFF674AEF).withOpacity(0.6)
                        : Color(0xFF674AEF),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // isvideosection = false;
                          isvideosection = !isvideosection;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // creation of two different sections for videos and description

            SizedBox(
              height: 10,
            ),

            isvideosection ? VideoSection() : DescriptionSection(),
          ],
        ),
      ),
    );
  }
}
