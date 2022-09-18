import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: EchoList(),
));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);

  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple',author:'Manushi'),
    Quote(author:'Manushi',text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author:'Manushi'),
  ];
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

/*class FinalTest1 extends StatefulWidget {
  @override
  State<FinalTest1> createState() => _FinalTest1State();
}*/

/*class _FinalTest1State extends State<FinalTest1> {
  num age = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
        elevation: 0.0,
      ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){
         setState(() {
           age -=1;
         });
       },
       child: Icon(Icons.exposure_minus_1),
       backgroundColor: Colors.brown,
     ),


     // body: Row(
      //   children: [
      //     Text('Hello Row'),
      //     FlatButton(
      //       onPressed: () {},
      //       color: Colors.purple,
      //       child: Text('press me'),
      //     ),
      //     Container(
      //       color: Colors.cyanAccent,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text('Inside container'),
      //     )
      //   ],
      // // Padding(
      // //   padding: EdgeInsets.all(50),
      // //   child: Text('Hello only padding'),
      // ),
      // body: Row(
      //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   // mainAxisAlignment: MainAxisAlignment.end,
      //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   // mainAxisAlignment: MainAxisAlignment.start,
      //
      //
      //   // crossAxisAlignment: CrossAxisAlignment.stretch,
      //   // crossAxisAlignment: CrossAxisAlignment.end,
      //   // crossAxisAlignment: CrossAxisAlignment.start,
      //   // crossAxisAlignment: CrossAxisAlignment.center,
      //   // crossAxisAlignment: CrossAxisAlignment.baseline,
      //
      //
      //   children: [
      //     // Text('Hello row'),
      //     // FlatButton(onPressed: () {},
      //     //     color: Colors.purple,
      //     //     child: Text('press me')),
      //     // Row(
      //     //   children: [
      //     //     Text('Hello DDU .....  '),
      //     //     Text('...Hello 5th sem students...'),
      //     //   ],
      //     // ),
      //     Expanded(
      //       child: Container(
      //         color: Colors.cyanAccent,
      //         padding: EdgeInsets.all(30),
      //         child: Text('1'),
      //         // margin: EdgeInsets.all(10.0),
      //       ),
      //     ),
      //     Container(
      //       color: Colors.lightGreen,
      //       padding: EdgeInsets.all(30),
      //       child: Text('2'),
      //       // margin: EdgeInsets.all(10.0),
      //     ),
      //     Container(
      //       color: Colors.purple,
      //       padding: EdgeInsets.all(30),
      //       child: Text('3'),
      //       // margin: EdgeInsets.all(10.0),
      //     )
      //   ],
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Text('Click'),
      //   backgroundColor: Colors.red[600],
      //   // child: const Icon(Icons.add),
      // ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage('assests/sub_assests/image.png'),
//             ),
//             Text(
//               'Name: ',
//               style: TextStyle(
//                 color: Colors.grey[800],
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Manushi Patel',
//               style: TextStyle(
//                 color: Colors.blue[900],
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(height: 40),
//             Text(
//               'Age: ',
//               style: TextStyle(
//                 color: Colors.grey[800],
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               '$age',
//               style: TextStyle(
//                 color: Colors.blue[900],
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(height: 50),
//             Row(
//               children: [
//                 Icon(
//                   Icons.email_rounded,
//                   color: Colors.deepPurple[800],
//                 ),
//                 SizedBox(width: 12.0),
//                 Text(
//                   '20ceuos066@ddu.ac.in',
//                   style: TextStyle(
//                     color: Colors.brown[800],
//                     fontSize: 16.0,
//                     letterSpacing: 1.5,
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: (){
//       //     setState(() {
//       //       age +=1;
//       //     });
//       //   },
//       // ),
//     );
//   }
// }*/