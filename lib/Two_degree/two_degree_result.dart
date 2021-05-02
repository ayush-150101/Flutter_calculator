import 'package:calculator_app/Two_degree/two_degree_1.dart';
import 'package:flutter/material.dart';

import '../Layout_dark.dart';

class two_degree_result extends StatefulWidget {
  final String result;

  two_degree_result({
    Key key,
    @required this.result,
  }):super(key:key);

  @override
  _two_degree_resultState createState() => _two_degree_resultState();
}

class _two_degree_resultState extends State<two_degree_result> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('CALCULATOR',style: TextStyle(color: Colors.blue[100]),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.result,
            style: TextStyle(color: Colors.blue[400],fontSize: 25),),
            SizedBox(height: 40,),
            FlatButton.icon(onPressed: () {
              Navigator.pushReplacement(context,PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => degree_two(),
                transitionDuration: Duration(seconds: 0),
              ),);
            },  icon: Icon(Icons.settings_backup_restore_outlined,color: Colors.white60,), label: Text('Reset',style: TextStyle(color: Colors.white),),),
          ],

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
