import 'package:flutter/material.dart';
import 'dashboard.dart';
void main() {
  runApp(SignupPage());
}

class SignupPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/dashboard': (BuildContext context) => new WdashboardPage()
      },
      home:new Mysignuppage(),
    );
  }
}

class Mysignuppage extends StatefulWidget {

  @override
  _MysignuppageState createState() => new _MysignuppageState();
}

class _MysignuppageState extends State<Mysignuppage> {
  


  @override
  Widget build(BuildContext context) {
  return Scaffold(
      resizeToAvoidBottomPadding: false,
     
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          Container(
            child: Stack(
              children: <Widget>[

                Container(
                  child: new Image.asset(
                    'assets/rglogo.png',height: 250,width: 300,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(85.0, 180.0, 0.0, 0.0),
                  child: Text(
                    'Technolgy for Innovators..',
                      style: TextStyle(
                      fontSize: 10.0, fontWeight: FontWeight.bold),
                  )
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90.0, 200.0, 0.0, 0.0),
                  child: Text(
                    'Sign Up',
                      style: TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold),
                  )
                )
              ],
            ),
          ),
          
          Container(
            padding: EdgeInsets.only(top:5.0, left: 20.0, right:20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    )
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    )
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone No.',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    )
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    )
                  ),
                ),
                SizedBox(height: 45.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.black,
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {Navigator.pushNamed(context, '/dashboard');},
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                            
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              )),
        ],
        )
    );
  }
}
