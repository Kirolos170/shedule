import 'package:flutter/material.dart';
import 'package:schedule/view/components/core(reusable%20components)/mycustom_card.dart';
import 'package:schedule/view/pages/home_screen.dart';
import 'package:schedule/viewmodel/Database/network/dio_helper.dart';
void main() async
{

  await DioHelper.init() ;
  runApp(



      MaterialApp(



    debugShowCheckedModeBanner: false,
    home : HomeScreen()

  ));


}