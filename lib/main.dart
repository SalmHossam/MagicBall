import 'dart:math';
import 'package:flutter/material.dart';
void main() => runApp(
      MaterialApp(
        home:BallPage(),
      ),
    );
class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.blue,
      appBar:
    AppBar(title:Text('Ask Me Anything',),
    backgroundColor: Colors.transparent,
    ),
      body: Ball() ,
    );
  }
}
class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  void updateImages(){
    setState(() {
      ballNumber=Random().nextInt(5)+1;
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: updateImages,
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}


