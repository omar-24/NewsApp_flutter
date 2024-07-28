import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/screens/detailscreen.dart';
import 'package:newsapp/screens/homescreen.dart';

void main(){
  runApp(newsapp());
}

class newsapp extends StatelessWidget {

  const newsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes:{ "detailscreen":(context)=>DetailScreen()},
      home: homescreen(),
    );
  }
}
