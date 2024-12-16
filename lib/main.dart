import 'package:demo_session4/detail.dart';
import 'package:demo_session4/home.dart';
import 'package:demo_session4/load.dart';
import 'package:flutter/material.dart';

class ToDo {
  final String title;
  final String image;
  final String desc;

  ToDo({required this.title, required this.image, required this.desc});
}

void main() {
  List<ToDo> todo = [
    ToDo(title: 'Korea Selatan', image: 'assets/seoul.png', desc: 'desc desc desc desc desc desc desc'),
    ToDo(title: 'China', image: 'assets/china.png', desc: 'desc desc desc desc desc desc desc'),
    ToDo(title: 'Canada', image: 'assets/canada.png', desc: 'desc desc desc desc desc desc desc'),
  ];

  runApp(MaterialApp(
    routes: {
      '/loading': (cotext)=>Loading(),
      '/home': (context)=>HomePage(todo: todo),
      '/detail': (context)=>DetailPage()
    },
    debugShowCheckedModeBanner: false,
    home: HomePage(todo: List.generate(3, (i)=>todo[i]),),
  ));
}