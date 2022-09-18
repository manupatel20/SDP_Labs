import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Homescreen(),

));

class Homescreen extends StatelessWidget{


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title:Text('Hello Flutter... My first App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],

      ),
      body: Center(
        child: Text(
          'Hello DDU',
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'Aboreto'
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ }, //must required property..
        //making change at here to test hot reloading...click --> click
        //  me ---> click and control +s
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}