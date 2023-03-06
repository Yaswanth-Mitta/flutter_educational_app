// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, sized_box_for_whitespace, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_application_1/02%20Educational%20App/screens/course_screen.dart';

class HomePage extends StatelessWidget {
  List catNames = [
    'Category',
    'Classes',
    'Free Course',
    'BookStore',
    'Live Courses',
    'LeaderBoard'
  ];

  List<Color> catColors = [
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF61BDFD),
    Color(0xFFFC7F7F),
    Color(0xFFCB84FB),
    Color(0xFF78E667),
  ];

  List<Icon> catIcons = [
    Icon(
      Icons.category,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.video_library,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.assignment,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.store,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.play_circle_fill,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.emoji_events,
      color: Colors.white,
      size: 30,
    ),
  ];

  List imgList = ['Flutter', 'React Native', 'Python', 'C#'];

  List videoList = ['55 Videos' , '37 Videos' , '40 Videos' , '62 Videos'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
                color: Color(0xFF674AEF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    'Hi, Programmer',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.5)),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 25,
                        )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 1.1),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          catNames[index],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7)),
                        )
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Courses',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'see All',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF674AEF)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // childAspectRatio:
                      //     (MediaQuery.of(context).size.height - 50 - 75) /
                      //         (4 * 240),
                      childAspectRatio: 0.8,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemCount: imgList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {


                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CourseScreen(imgList[index] , videoList[index])));



                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFF5F3FF)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                'images/${imgList[index]}.png',
                                // scale: 0.8,
                                width: 100,
                                height: 100,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${imgList[index]}',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${videoList[index]}',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.5)),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(

        iconSize: 25,
        selectedItemColor: Color(0xFF674AEF),
        selectedFontSize: 15,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
       
        
        

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home) , label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment) , label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite) , label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person) , label: 'Account'),
        ],
      ),

    );
  }
}


// 27:48
