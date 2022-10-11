import 'package:flutter/material.dart';
Widget Mydivider ({ String? text1 ,  String? text2})
{

  return Column(

    children: [
      Container(color: Colors.grey,width: 1,height: 20,),
      Container(width: 50,height: 80,decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),



      ),child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("11",style: TextStyle(fontSize: 20,color: Colors.white,),),
          Text("sun",style: TextStyle(fontSize: 20,color: Colors.white),)


        ],),),
      Container(color: Colors.grey,width: 1,height: 350,),


    ],
  );





}
