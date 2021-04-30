import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  // ignore: non_constant_identifier_names
  String Equation = '';
  // ignore: non_constant_identifier_names
  String Answer = '';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('CALCULATOR',style: TextStyle(color: Colors.blue[100]),),
        backgroundColor: Colors.blueAccent,
      ),

      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SingleChildScrollView(child: Text(Equation,style: TextStyle(color: Colors.blue[200],fontSize: 40),)),
          SizedBox(height:70),
          Text(Answer, style: TextStyle(color: Colors.blue[300],fontSize: 40),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation ='';Answer = '';});}, child: Text('AC',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation = Equation.substring(0, Equation.length - 1);});}, child: Text('DEL',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
              RaisedButton(color: Colors.black,onPressed:() {setState(() {Equation+='+';});}, child: Text('+',style: TextStyle(color: Colors.blue[500],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='*';});}, child: Text('X',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='1';});}, child: Text('1',style: TextStyle(color: Colors.blue[200],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='2';});}, child: Text('2',style: TextStyle(color: Colors.blue[200],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='3';});}, child: Text('3',style: TextStyle(color: Colors.blue[200],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='-';});}, child: Text('-',style: TextStyle(color: Colors.blue[500],fontSize: 40),)),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='4';});}, child: Text('4',style: TextStyle(color: Colors.blue[200],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='5';});}, child: Text('5',style: TextStyle(color: Colors.blue[200],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='6';});}, child: Text('6',style: TextStyle(color: Colors.blue[200],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='/';});}, child: Text('/',style: TextStyle(color: Colors.blue[500],fontSize: 40),)),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='7';});}, child: Text('7',style: TextStyle(color: Colors.blue[200],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='8';});}, child: Text('8',style: TextStyle(color: Colors.blue[200],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='9';});}, child: Text('9',style: TextStyle(color: Colors.blue[200],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {equalPressed();});}, child: Text('=',style: TextStyle(color: Colors.blue[500],fontSize: 40),)),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='(';});}, child: Text('(',style: TextStyle(color: Colors.blue[500],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='sin';});}, child: Text('.',style: TextStyle(color: Colors.blue[500],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+='0';});}, child: Text('0',style: TextStyle(color: Colors.blue[200],fontSize: 40),)),
              RaisedButton(color: Colors.black,onPressed:(){setState(() {Equation+=')';});}, child: Text(')',style: TextStyle(color: Colors.blue[500],fontSize: 40),)),
            ],
          )


        ],
      ),
    );
  }

  void equalPressed() {
    String finaluserinput = Equation;

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    Answer = eval.toString();
  }
}

