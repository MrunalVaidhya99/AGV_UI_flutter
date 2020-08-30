import 'package:flutter/material.dart';
import 'signup.dart';
import 'dashboard.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/signup': (BuildContext context) => new SignupPage(),
        '/dashboard': (BuildContext context) => new WdashboardPage()
      },
     
      home:new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      resizeToAvoidBottomPadding: false,
     
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          Container(
            child: Stack(
              children: <Widget>[
                
                Container(
                  child: new Image.asset(
                    'assets/rglogo.png',height: 300,width: 300,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(85.0, 210.0, 0.0, 0.0),
                  child: Text(
                    'Technolgy for Innovators..',
                      style: TextStyle(
                      fontSize: 10.0, fontWeight: FontWeight.bold),
                  )
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(95.0, 230.0, 0.0, 0.0),
                  child: Text(
                    'Sign In',
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
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    )
                  ),
                ),
                SizedBox(height: 20.0,),
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
                SizedBox(height: 20.0,),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top:15.0, left:20.0),
                  child: InkWell(
                    child: Text('Forgot Password ?',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0,),
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
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              )),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Manager ?',
              ),
              SizedBox(width: 5.0),
              InkWell(
                onTap: () {
                   Navigator.pushNamed(context, '/signup');
                },
                child: Text('Sign up',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
                  ),
                ),
                
              )
            ],
          )
        ],
        )
    );
  }
}
