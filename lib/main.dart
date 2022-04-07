import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
         actions: <Widget>[  
          IconButton(icon: Icon(Icons.camera_alt), onPressed: ()  {}),  
          IconButton(icon: Icon(Icons.account_circle), onPressed: ()  {})  
        ],  
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dicenumber1 = 1;
  int dicenumber2 = 1;

  void changedice(){
     setState(() {
                dicenumber1 = Random().nextInt(6)+1;
                dicenumber2 = Random().nextInt(6)+1;
              });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
            onPressed: (){
             changedice();
             },
            child: Image.asset("images/dice$dicenumber1.png"),
            ),
                 ),
          
         
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
            onPressed: (){
             changedice();
            },
            child: Image.asset("images/dice$dicenumber2.png"),
            ),
            
            //fit:BoxFit.cover,
            ),
          
        ],
      ),
    );
  }

}


