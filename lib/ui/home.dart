import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}


class HomeState extends State<Home> {
  int radioValue = 0;

  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;

        print(radioValue);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Weight on Planet X"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
       backgroundColor: Colors.blueGrey,
       body: new Container(
         alignment: Alignment.topCenter,
         child: new ListView(
           padding: const EdgeInsets.all(2.5),
           children: <Widget>[
             new Image.asset('images/planet.png',
             height: 133.0,
             width: 200.0,),

             new Container(
               margin: const EdgeInsets.all(3.0),
               alignment: Alignment.center,
               child: new Column(
                 children: <Widget>[
                   new TextField(
                     controller: null,
                     keyboardType: TextInputType.number,
                     decoration: new InputDecoration(
                       labelText:'Your weight on Earth',
                       hintText: 'In Pounds',
                       fillColor: Colors.white,
                       icon: new Icon(Icons.person_outline)
                     ),

                   ),
                   new Padding(padding: new EdgeInsets.all(5.0)),

                   // three radio buttons
                   new Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       // radio buttons
                       new Radio<int>(
                         activeColor: Colors.yellowAccent,
                           value: 0, groupValue: radioValue, onChanged: handleRadioValueChanged),

                       new Text(
                         "Pluto",
                         style: new TextStyle(color: Colors.white54),
                       ),
                       new Radio<int>(
                           activeColor: Colors.deepOrange,
                           value: 1, groupValue: radioValue, onChanged: handleRadioValueChanged),
                       new Text(
                         "Jupter",
                         style: new TextStyle(color: Colors.red),
                       ),
                       new Radio<int>(
                           activeColor: Colors.deepPurple,
                           value: 2, groupValue: radioValue, onChanged: handleRadioValueChanged),
                       new Text(
                         "Mars",
                         style: new TextStyle(color: Colors.lightGreenAccent),
                       ),
                     ],
                   ),
                   new Padding(padding: new EdgeInsets.all(15.6)),

                   new Text(
                     "Hello Chokrab",
                     style: new TextStyle(
                       color: Colors.white,
                       fontSize: 20,
                       fontWeight: FontWeight.w500
                     ),
                   )
                 ],
               )
             )
           ]
         )
       ),
    );
  }

}