import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() =>  runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {
  void playsound(int suondnumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$suondnumber.wav'));
  }
  Expanded createdkey({required Color color ,required int suondnumber}){
    return  Expanded(
      child: TextButton(
          style: TextButton.styleFrom(backgroundColor: color),
          onPressed: (){
            playsound(suondnumber);
          }    ,
          child: Text('')),
    );
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createdkey(color: Colors.red , suondnumber: 1),
              createdkey(color: Colors.orange , suondnumber: 2),
              createdkey(color: Colors.yellow , suondnumber: 3),
              createdkey(color: Colors.green , suondnumber: 4),
              createdkey(color: Colors.teal , suondnumber: 5),
              createdkey(color: Colors.blue , suondnumber: 6),
              createdkey(color: Colors.purple , suondnumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
