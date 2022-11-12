// import 'package:flutter/material.dart';
// // import 'package:http/http.dart';
// import 'dart:convert';
// class Loading extends StatefulWidget {
// // const Loading({Key? key}) : super(key: key);
//   @override
//   State<Loading> createState() => _LoadingState();
// }
// class _LoadingState extends State<Loading> {
//   void getData() async {
//   String username = await Future.delayed(Duration(seconds: 4), () {
//   return 'UNIVERSITY NAME : DDU';
//   });
//   //
//   // String bio = await Future.delayed(Duration(seconds: 2), () {
//   // return 'DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR '
//   // 'COMPUTER ENGINEERING STUDY';
//   // });
//   //
//   // print('$username -> $bio');
//   //
//   //
//   // }
//   //
//   // @override
//   // void initState() {
//   // super.initState();
//   // print('INIT STATE FUNCTION RUN IN CHOOSE LOCATION...');
//   // print('before getdata call');
//   // getData();
//   // print('after getdata call');
//   // }
//   void getData() async {
//     final response = await
//     get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
//     print(response.body); // it response in JSON form out put ...we need
//     //  MAPformat..
// // print(response.body.userId); // this will not work. because its not
//     //  MAPformat..
// // TO CONVERT JSON TO MAP..WE NEED TO IMPORT convert package....
//     Map data = jsonDecode(response.body);
//     print(data);
//     print(data['title']);
//   }
//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text('LOADING SCREEN'),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/rendering.dart';
import '../services/world_time.dart';
class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLoadingState();
}


class _ChooseLoadingState extends State<ChooseLocation> {
  int counter=0;
  List<WordTime> locations = [
    WordTime(location: 'kolkata',flag: 'india.png',url: 'Asia/Kolkata'),
    WordTime(location: 'Manila',flag: 'philippines.png',url: 'Asia/Manila'),
    WordTime(location: 'Singapore',flag: 'singapore.png',url: 'Asia/Singapore'),
    WordTime(location: 'Brisbane',flag: 'australia.png',url: 'Australia/Brisbane'),
    WordTime(location: 'Madrid',flag: 'spain.png',url: 'Europe/Madrid'),
    WordTime(location: 'Vienna',flag: 'austria.png',url: 'Europe/Vienna'),
    WordTime(location: 'Maldives',flag: 'maldives.png',url: 'Indian/Maldives'),
    WordTime(location: 'Johannesburg',flag: 'south-africa.png',url:
    'Africa/Johannesburg'),
    WordTime(location: 'Barbados',flag: 'barbados.png',url: 'America/Barbados'),
    WordTime(location: 'Costa_Rica',flag: 'costa-rica.png',url:
    'America/Costa_Rica'),
    WordTime(location: 'Jamaica',flag: 'jamaica.png',url: 'America/Jamaica'),
    WordTime(location: 'Phoenix',flag: 'usa.png',url: 'America/Phoenix'),
    WordTime(location: 'Broken_Hill',flag: 'australia.png',url:
    'Australia/Broken_Hill'),
    WordTime(location: 'Moscow',flag: 'russia.png',url: 'Europe/Moscow'),
  ];
  void updateTime(index) async {
    WordTime instance = locations[index];
    await instance.getTime();
// navigate to home screen by popping instead of pushing new replica
// of home screen
    Navigator.pop(context,{
      'location' : instance.location,
      'flag' : instance.flag,
      'time' : instance.time,
      'isDayTime' : instance.isDayTime,
    });
  }
  // void getData() async {
  //   String username = await Future.delayed(Duration(seconds: 4), () {
  //     return 'UNIVERSITY NAME : DDU';
  //   });
  //   // Future.delayed(Duration(seconds: 4), (){
  //   //   print('UNIVERSITY NAME : DDU');
  //   // });
  //
  //   // Future.delayed(Duration(seconds: 2), (){
  //   //   print('DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR COMPUTER ENGINEERING STUDY');
  //   // });
  //
  //   String bio = await Future.delayed(Duration(seconds: 2), () {
  //     return 'DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR '
  //         'COMPUTER ENGINEERING STUDY';
  //   });
  //
  //   print('$username -> $bio');
  //
  //
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   print('INIT STATE FUNCTION RUN IN CHOOSE LOCATION...');
  //   print('before getdata call');
  //   getData();
  //   print('after getdata call');
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  // print(locations[index].location);
                  updateTime(index);
                },
                title: Text(locations[index].location.toString()),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/flags/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),

    );
  }
// void getData() async {
//   final response = await
//   get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
//   print(response.body);
//   Map data = jsonDecode(response.body);
//   print(data);
//   print(data['title']);
// }
// @override
// void initState() {
//   super.initState();
//   getData();
// }
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: Colors.blueGrey[200],
//     body: ElevatedButton(
//       onPressed: (){
//         setState((){
//           counter+=1;
//         });
//     },
//       child: Text('COUNTER IS: $counter'),
//     ),
//   );
// }
}