import 'package:calculator_app/Two_degree/two_degree_2.dart';
import 'package:flutter/material.dart';

import '../Layout_dark.dart';

class degree_two extends StatefulWidget {
  @override
  _degree_twoState createState() => _degree_twoState();
}

class _degree_twoState extends State<degree_two> {

  final _formKey = GlobalKey<FormState>();
  double a1 = 0, b1 = 0, c1 = 0;

  @override
  Widget build(BuildContext context) {
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
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    style: TextStyle(color: Colors.white,fontSize: 18,),
                  keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'a1',
                      hintStyle: TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      labelStyle: TextStyle(
                          color:Colors.lightBlueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                      ),
                      hintText: 'Enter Value of a1',
                      fillColor: Colors.lightBlueAccent,
                    ),
                    validator: (val) => val.isEmpty?'Enter a value for a1':null,
                    onChanged: (val) {setState(() => a1 = double.parse(val));}
                ),
                SizedBox(
                  height: 20,
                ),

                TextFormField(
                    style: TextStyle(color: Colors.white,fontSize: 18,),
                  keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'b1',
                      hintStyle: TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      labelStyle: TextStyle(
                        color:Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      hintText: 'Enter Value of b1',
                      fillColor: Colors.lightBlueAccent,
                    ),
                    validator: (val) => val.isEmpty?'Enter a value for b1':null,
                    onChanged: (val) {
                      setState(() => b1 = double.parse(val));
                    }),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    style: TextStyle(color: Colors.white,fontSize: 18,),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'c1',
                      hintStyle: TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      labelStyle: TextStyle(
                        color:Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      hintText: 'Enter Value of c1',
                      fillColor: Colors.lightBlueAccent,
                    ),
                    validator: (val) => val.isEmpty?'Enter a value for c1':null,
                    onChanged: (val) {
                      setState(() => c1 = double.parse(val));
                    }),
                SizedBox(
                  height: 20,
                ),
                /*RaisedButton(
                  onPressed: () {},
                  color: Colors.pink[400],
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  ),
                ),*/

                FloatingActionButton(onPressed: (){
                  if(_formKey.currentState.validate())
                    {
                      Navigator.push(context,PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => degree_two_one(a1: a1,b1: b1, c1: c1),
                        transitionDuration: Duration(seconds: 0),
                      ));
                    }
                }, child: Icon(Icons.arrow_forward),),

                SizedBox(height: 15,),

                Text(a1.toString()+" "+b1.toString()),

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
