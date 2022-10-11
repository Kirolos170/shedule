import 'package:flutter/material.dart';
import 'package:schedule/view/components/home_screen_divider/home_screen_divider.dart';

import '../../../constants.dart';






  Widget  Mycard   (String title,
    int spots,
     String date,
     String place,
     int price)
  {



      return

            Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      //    SizedBox(height: double.infinity,),

        Mydivider(),
          SizedBox(width: 30,),
          Expanded(
            child: Container(

              width: 250,
              height: 450,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black,offset: Offset(2.00 ,2.00))],
                  borderRadius: BorderRadius.circular(20),
                  color: kBackgroundColor



              ),

              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    left: 15,
                    right: 15,
                    child: Container(
                      child: Image.network("https://modo3.com/thumbs/fit630x300/74232/1449574346/%D8%B4%D8%B1%D8%AD_%D9%83%D9%8A%D9%81%D9%8A%D8%A9_%D9%86%D8%B4%D8%B1_%D8%A7%D9%84%D8%B5%D9%88%D8%B1_%D8%B9%D9%84%D9%89_%D8%AC%D9%88%D8%AC%D9%84.jpg",fit: BoxFit.fill,),
                      width: 100,
                      height: 250,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red

                      ),),
                  ),
                  Positioned(
                    top: 30,
                    left: 30,
                    child: Container(

                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                      color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)

                    ),child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(4), // Border radius
                            child: ClipOval(child: Icon(Icons.sports_volleyball,color: Colors.deepOrange,)),
                          ),
                        ),
                        Text("$title",style: TextStyle(fontSize: 20),)
                      ],

                    ),),
                  ),
                  Positioned(
                    top: 200,
                    left: 30,
                    child: Container(

                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)

                      ),child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Text("${spots==0? "unlimited spots" : "$spots" + " "+ " " +"Spots left"} ",style: TextStyle(fontSize: 20,color: Colors.deepOrange),)
                      ],

                    ),),
                  ),
                  Positioned(
                    left: 15,
                    top: 290,
                    child: Row(children: [Text("$date",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                 //     Text("3.17 Pm",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                    ],),
                  ),

                  Positioned(
                      left: 15,
                      top:310 ,
                      child: Text("All Payments",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),)),
                  Positioned(
                      left: 15,
                      top:350 ,
                      child:Text("$place",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),
                  Positioned(
                      left: 15,
                      top:370 ,
                      child:Text("36 Days Left",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),


                  Positioned(left:15,top:400,child: Container(
                    width: 300,
                    height: 100,


                  child: Stack(
                    children: [

                        CircleAvatar(radius: 20,backgroundImage:  AssetImage("images/my.jpg"),),
                        Positioned(left:25,child: CircleAvatar(radius:20,backgroundImage: AssetImage("images/my pic.jpg"),)),


                    ],

                  ),)),

                  Positioned(right:40,bottom: 40,

                      child: Icon(Icons.monetization_on_outlined,color: Colors.deepOrange,size: 30,),
                    ),
                  Positioned(right:10,bottom: 15,

                    child: Text("AED ${price==0? "event is for free" : "$price"} ",style: TextStyle(color: Colors.deepOrange,fontSize: 20),)
                  ),




                ],
              ),

            ),
          ),


        ],),



            ) ;

  }

