import 'package:demo_session4/main.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  String? title;
  String? flags;
  String? desc;
  DetailPage({super.key, this.title, this.flags, this.desc});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(18),
          children: [
            Text(widget.title!, style: TextStyle(fontSize: 28)),
            SizedBox(height: 12),
            Image.asset(widget.flags!),
            SizedBox(height: 12),
            Text(widget.desc!, style: TextStyle(fontSize: 16),),
          ],
        ),
      )
    );
  }
}