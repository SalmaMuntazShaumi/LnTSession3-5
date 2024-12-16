// ignore_for_file: use_build_context_synchronously

import 'package:demo_session4/detail.dart';
import 'package:demo_session4/world_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  String? loc;
  String? url;
  String? flags;
  String? desc;
  Loading({super.key, this.loc, this.url, this.flags, this.desc});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: widget.loc!, url: 'Asia/${widget.loc}');
    await instance.getTime();
    print(instance);
    Navigator.pushReplacementNamed(context, 'home', arguments: {
      'location' : instance.location,
      'time' : instance.time
    }
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: SpinKitFadingCube(
        color: Colors.blue,
        size: 50,
      ),),
    );
  }
}