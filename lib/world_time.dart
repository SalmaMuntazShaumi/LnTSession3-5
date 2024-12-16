import 'dart:convert';

import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String? time;
  String url;

  WorldTime({required this.location, this.time, required this.url});

  Future<void> getTime() async {
    Response response = await get(Uri.http('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);

    String dateTime = data['datetime'];
    String offset = data['utc_offset'];

    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offset.substring(1, 3))));

    time = DateFormat.jm().format(now);
  }
}