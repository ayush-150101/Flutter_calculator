import 'package:calculator_app/Two_degree/calculateResult.dart';
import 'package:calculator_app/Two_degree/two_degree_1.dart';
import 'package:calculator_app/Two_degree/two_degree_result.dart';
import 'package:flutter/material.dart';

import '../Layout_dark.dart';

// ignore: camel_case_types
class degree_two_one extends StatefulWidget {

  double a1,b1,c1;

  degree_two_one({
    Key key,
    @required this.a1,
    @required this.b1,
    @required this.c1,

  }):super(key:key);

  @override
  _degree_two_oneState createState() => _degree_two_oneState();
}

class _degree_two_oneState extends State<degree_two_one> {

  final _formKey = GlobalKey<FormState>();
  double a2 = 0,b2 = 0,c2 = 0,a1 = 0,b1 =0,c1 = 0;
  String s;

  @override
  Widget build(BuildContext context) {

    a1 = widget.a1;
    b1 = widget.b1;
    c1 = widget.c1;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('CALCULATOR',style: TextStyle(color: Colors.blue[100]),),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    style: TextStyle(color: Colors.white,fontSize: 18,),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'a2',
                      hintStyle: TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      labelStyle: TextStyle(
                        color:Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      hintText: 'Enter Value of a2',
                      fillColor: Colors.lightBlueAccent,
                    ),
                    validator: (val) => val.isEmpty?'Enter a value for a2':null,
                    onChanged: (val) {setState(() => a2 = double.parse(val));}
                ),
                SizedBox(
                  height: 20,
                ),

                TextFormField(
                    style: TextStyle(color: Colors.white,fontSize: 18,),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'b2',
                      hintStyle: TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      labelStyle: TextStyle(
                        color:Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      hintText: 'Enter Value of b2',
                      fillColor: Colors.lightBlueAccent,
                    ),
                    validator: (val) => val.isEmpty?'Enter a value for b2':null,
                    onChanged: (val) {
                      setState(() => b2 = double.parse(val));
                    }),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    style: TextStyle(color: Colors.white,fontSize: 18, ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'c2',
                      hintStyle: TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      labelStyle: TextStyle(
                        color:Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      hintText: 'Enter Value of c2',
                      fillColor: Colors.lightBlueAccent,
                    ),
                    validator: (val) => val.isEmpty?'Enter a value for c2':null,
                    onChanged: (val) {
                      setState(() => c2 = double.parse(val));
                    }),
                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                    FloatingActionButton(onPressed: (){

                        Navigator.pushReplacement(context,PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) => degree_two(),
                          transitionDuration: Duration(seconds: 0),
                        ));


                    }, child: Icon(Icons.arrow_back),),
                    SizedBox(width: 20,),
                    FloatingActionButton(onPressed: (){
                      if(_formKey.currentState.validate())
                      {
                          var func = new calculateResult();
                          func.calc(a1, b1, c1, a2, b2, c2);
                          Navigator.pushReplacement(context,PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) => two_degree_result(result: func.result),
                            transitionDuration: Duration(seconds: 0),
                          ));

                      }
                    }, child: Icon(Icons.arrow_forward),),
                  ],
                ),

                SizedBox(height: 15,),

                //Text(data['a1']),



              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('MENU'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
                title: Text('Standard Mode'),
                onTap: () {

                  Navigator.pushReplacement(context,PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) => Layout_dark(),
                    transitionDuration: Duration(seconds: 0),
                  ),);}

            ),
          ],
        ),
      ),
    );
  }
}
