// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(


        children: [

          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
          style: TextStyle(

            fontSize: 16,
            color: Colors.black.withOpacity(0.8)

          ),
          textAlign: TextAlign.justify,
          ),

          SizedBox(height: 20,),


          Row(

            children: [

              Text(
                'Course Length:- ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
                ),

              Spacer(),
              
              Icon(
              Icons.timer , 
              color: Color(0xFF674AEF),
              ),

              // SizedBox(width: 5,),

              Text(
                '6.8 Hours',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
                ),




            ],

          ),


          Row(

            children: [

              Text(
                'Rating',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
                ),

              Spacer(),

              

              // SizedBox(width: 5,),

              Icon(Icons.star_outlined , color: Colors.amberAccent,),
              Icon(Icons.star_outlined, color: Colors.amberAccent,),
              Icon(Icons.star_outlined, color: Colors.amberAccent,),
              Icon(Icons.star_half_rounded, color: Colors.amberAccent,),
              Icon(Icons.star_outlined ,  size: 20, color: Colors.black.withOpacity(0.5),),




            ],

          ),



          
        ],

      ),
      );
  }
}
