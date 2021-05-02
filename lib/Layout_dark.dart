import 'package:calculator_app/Functionality.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'Layout_light.dart';
import 'Two_degree/two_degree_1.dart';

class Layout_dark extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout_dark> {
  // ignore: non_constant_identifier_names
  String Equation = '';
  String finalExpression = '';
  // ignore: non_constant_identifier_names
  String Answer = '';

  var func = new Functionality();

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
          SingleChildScrollView(child: Text(func.Equation,style: TextStyle(color: Colors.blue[300],fontSize: 30),)),
          SizedBox(height:70),
          Text(func.Answer, style: TextStyle(color: Colors.blue[300],fontSize: 30),),
          FittedBox(
            fit: BoxFit.fill,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.allClear();});}, child: Text('AC',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.deleteButtonTapped();});}, child: Text('DEL',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:() {setState(() {func.buttonTapped('+');});}, child: Text('+',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('*');});}, child: Text('X',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('sin');});}, child: Text('sin',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
              ],
            ),
          ),

          FittedBox(
            fit: BoxFit.fill,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('1');});}, child: Text('1',style: TextStyle(color: Colors.blue[300],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('2');});}, child: Text('2',style: TextStyle(color: Colors.blue[300],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('3');});}, child: Text('3',style: TextStyle(color: Colors.blue[300],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('-');});}, child: Text('-',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('cos');});}, child: Text('cos',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
              ],
            ),
          ),

          FittedBox(
            fit: BoxFit.fill,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('4');});}, child: Text('4',style: TextStyle(color: Colors.blue[300],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('5');});}, child: Text('5',style: TextStyle(color: Colors.blue[300],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('6');});}, child: Text('6',style: TextStyle(color: Colors.blue[300],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('/');});}, child: Text('/',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('tan');});}, child: Text('tan',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
              ],
            ),
          ),

          FittedBox(
            fit: BoxFit.fill,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('7');});}, child: Text('7',style: TextStyle(color: Colors.blue[300],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('8');});}, child: Text('8',style: TextStyle(color: Colors.blue[300],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('9');});}, child: Text('9',style: TextStyle(color: Colors.blue[300],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('^');});}, child: Text('^',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('log(10,');});}, child: Text('log',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
              ],
            ),
          ),

          FittedBox(
            fit: BoxFit.fill,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(color: Colors.black,onPressed:(){func.buttonTapped('(');}, child: Text('(',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('.');});}, child: Text('.',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped('0');});}, child: Text('0',style: TextStyle(color: Colors.blue[300],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.buttonTapped(')');});}, child: Text(')',style: TextStyle(color: Colors.blue[500],fontSize: 30),)),
                RaisedButton(color: Colors.black,onPressed:(){setState(() {func.equalPressed();});}, child: Text('=',style: TextStyle(color: Colors.white,fontSize: 50),)),
              ],
            ),
          )


        ],
      ),
      drawer: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('MENU'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Equation Solving Mode'),
              onTap: () {
                Navigator.pushReplacement(context,PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => degree_two(),
                   transitionDuration: Duration(seconds: 0),
                    ),);}

            ),
          ],
        ),
      ),
    );

  }


}

