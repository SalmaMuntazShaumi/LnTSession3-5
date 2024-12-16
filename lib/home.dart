import 'package:demo_session4/detail.dart';
import 'package:demo_session4/load.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.todo});

  final List<ToDo> todo;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    // data = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar.new(
        title: Text('TODO LIST'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, '/loading');
              });
            },
            child: Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(widget.todo[index].title),
                leading: Image.asset(widget.todo[index].image),
              ),
            ),
          );
        }
        ),
    );
  }
}