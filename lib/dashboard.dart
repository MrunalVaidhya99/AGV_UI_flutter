import 'package:flutter/material.dart';

void main() {
  runApp(WdashboardPage());
}

class WdashboardPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:new MyWdashboardPage(),
    );
  }
}

class MyWdashboardPage extends StatefulWidget {

  @override
  _MyWdashboardPageState createState() => new _MyWdashboardPageState();
}

class _MyWdashboardPageState extends State<MyWdashboardPage> {
  List<DropdownMenuItem<String>> listDrop = [];
  // ignore: avoid_init_to_null
  String selected = null;
  var _tools = ['Nut', 'Bolt', 'Screw', 'Hammer'];
  // ignore: unused_field
  var _currentItemSelected = 'Nut';
  void loadData(){
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: new Text('Consumable'),
      value: 'one',
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('Non-Consumable'),
      value: 'two',
    ));
  }
  
  
  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      appBar: new AppBar(
        title: new Text('AGV'),
      ),
      body: 
      ListView(shrinkWrap: true ,children: <Widget>[
        Column(crossAxisAlignment: CrossAxisAlignment.center,
        
  
         children: <Widget>[
          Stack(children: [
            Stack(
              children: <Widget>[
                Container(
                  height: 120.0,
                  width: double.infinity,
                  color: Colors.green,
                ),
                Positioned(
                  bottom: 450.0,
                  right: 100.0,
                  child: 
                  Container(
                    height: 300.0,
                    width:400.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200.0),
                      color: Colors.yellow,
                      ),
                  )),
                  Container(
                  padding: EdgeInsets.fromLTRB(60.0, 60.0, 0.0, 0.0),
                  child: Text(
                      'Worker Dashboard',
                      style: TextStyle(
                      fontSize: 30.0, 
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                    )
                  ),
                   Container(
                  padding: EdgeInsets.fromLTRB(90.0, 140.0, 0.0, 0.0),
                  child: Text(
                      'Request Items',
                      style: TextStyle(
                      fontSize: 25.0, 
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                    )
                  ),
                  //SizedBox(height: 150, width: 20),
                  new Container(
                    padding: EdgeInsets.fromLTRB(0.0, 170.0, 0.0, 0.0),
                    child: new Center(
                      child: new DropdownButton(
                        value: selected,
                        items: listDrop,
                        hint: new Text('Select Item'),
                        onChanged: (value) {
                          selected = value;
                          setState(() {
                           
                          });
                        }
                      ),
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.fromLTRB(0.0, 220.0, 0.0, 0.0),
                    child: new Center(
                    child:DropdownButton<String>(
                    
                      items: _tools.map((String dropDownStringitem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringitem,
                        
                        child: Text(dropDownStringitem),
                      );
                      }).toList(),
                      hint: new Text('Select Item'),
                      onChanged: (String newValueSelected) {
                        setState(() {
                        this._currentItemSelected = newValueSelected;
                        });
                    },
                  )
                  ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50.0, 270.0, 50.0, 0.0),
                  //height: 20.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Colors.black,
                    color: Colors.green,
                    elevation: 10.0,
                    child: GestureDetector(
                      onTap: () {Navigator.pushNamed(context, '/dashboard');},
                      child: Center(
                        child: Text(
                          'Submit Request Order',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                  Container(
                  padding: EdgeInsets.fromLTRB(90.0, 370.0, 0.0, 0.0),
                  child: Text(
                      'Return Items',
                      style: TextStyle(
                      fontSize: 25.0, 
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                    )
                  ),
                  SizedBox(height: 150, width: 20),
                  new Container(
                    padding: EdgeInsets.fromLTRB(0.0, 400.0, 0.0, 0.0),
                    child: new Center(
                      child: new DropdownButton(
                        value: selected,
                        items: listDrop,
                        hint: new Text('Select Item'),
                        onChanged: (value) {
                          selected = value;
                          setState(() {
                           
                          });
                        }
                      ),
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.fromLTRB(0.0, 450.0, 0.0, 0.0),
                    child: new Center(
                    child:DropdownButton<String>(
                    
                      items: _tools.map((String dropDownStringitem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringitem,
                        
                        child: Text(dropDownStringitem),
                      );
                      }).toList(),
                      hint: new Text('Select Item'),
                      onChanged: (String newValueSelected) {
                        setState(() {
                        this._currentItemSelected = newValueSelected;
                        });
                    },
                  )
                  ),
                  ),
                  Container(
            padding: EdgeInsets.only(top:480.0, left: 130.0, right:120.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Status of item',
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
              ],
              )),
                  Container(
                    
                  padding: EdgeInsets.fromLTRB(50.0, 550.0, 50.0, 0.0),
                  //height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Colors.black,
                    color: Colors.green,
                    elevation: 10.0,
                    child: GestureDetector(
                      onTap: () {Navigator.pushNamed(context, '/dashboard');},
                      child: Center(
                        child: Text(
                          'Submit Return Order',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                
              ],)
          ],)
        ],
      ),
      ]
    ));
  }
}
