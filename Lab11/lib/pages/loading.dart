/*import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Loading extends StatefulWidget {
// const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  // void getData() async {
  // String username = await Future.delayed(Duration(seconds: 4), () {
  // return 'UNIVERSITY NAME : DDU';
  // });
  //
  // String bio = await Future.delayed(Duration(seconds: 2), () {
  // return 'DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR '
  // 'COMPUTER ENGINEERING STUDY';
  // });
  //
  // print('$username -> $bio');
  //
  //
  // }
  //
  // @override
  // void initState() {
  // super.initState();
  // print('INIT STATE FUNCTION RUN IN CHOOSE LOCATION...');
  // print('before getdata call');
  // getData();
  // print('after getdata call');
  // }
  void getData() async {
    final response = await
    get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    print(response.body);

    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('LOADING SCREEN'),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  void getTime() async {
// Make Request for time and receive response
    Response response = await
    get(Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London'));
    Map timeData = jsonDecode(response.body);
    print(timeData);
// Get particular property form timeData...
    String dateTime = timeData['datetime'];
    String offset = timeData['utc_offset']; //not dst_offset
    print(dateTime);
    print(offset);
    DateTime currentTime = DateTime.parse(dateTime);
    print(currentTime);
/*
DateTime currentOffset = DateTime.parse(offset);
print(currentOffset);
*/
    String offsetHours = offset.substring(1,3);
    print(offsetHours);
    String offsetMinutes = offset.substring(4,6);
    print(offsetMinutes);
    currentTime = currentTime.add(Duration(minutes:
    int.parse(offsetMinutes),hours:int.parse(offsetHours)));
    print(currentTime);
  }
  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('LOADING SCREEN'),
    );
  }
}*/

import 'package:flutter/material.dart';
import '../services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  //String? time = 'LOADING..........';
  void setWorldTime() async {
    WordTime timeinstance =
    WordTime(location: 'london',flag: 'london.png',url: 'Europe/London');
    await timeinstance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': timeinstance.location,
      'flag': timeinstance.flag,
      'time': timeinstance.time,
    });
/*// print(timeinstance.time);
    setState(() {
      time = timeinstance.time;
    });*/
  }
  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
        body: Center(
          child: SpinKitFadingCube(
            color: Colors.white,
            size: 90.0,
          ),
        )
    );
  }
}