// ignore_for_file: unused_import, prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  // const VideoSection({super.key});

  List videoList = [
    'Introduction to flutter',
    'Installing flutter on windows',
    'Setup emulator on windows',
    'Creating Our First App'
  ];

  List playTime = [
    '30 min 15 sec',
    '1hr 12 min 06 sec',
    '9 min 39 sec',
    '20 min 16 sec',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0xFF674AEF)
                  : Color(0xFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: Text(playTime[index]),
        );
      },
    );
  }
}
