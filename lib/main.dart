// ignore_for_file: deprecated_member_use

import 'dart:ffi';

import 'package:flutter/material.dart';

void main(){
  runApp(
   MaterialApp(
     title: "App My",
     home: DemoContainers(),
   ),
  );
}

class DemoStateLess extends StatelessWidget {
  bool colorChange = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "StateLess Widget Demo",
          ),
          backgroundColor: Colors.amber,
        ),
        body: colorChange ? Container(
          color: Colors.green,
          child: const Center(
            child: Text(
              "Hello World StateLess Widget"
            ),
          ),
        ) : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                FlatButton(onPressed: (){
                  colorChange = !colorChange;
                }, child: Text("Loading"))
              ],
            ),
          ),
        ),
    );
  }
}


// Statefull Widget
class DemoStateFull extends StatefulWidget {
  @override
  State<DemoStateFull> createState() => _DemoStateFullState();
}

class _DemoStateFullState extends State<DemoStateFull> {
 bool changeColor = false;
  @override
  Widget build(BuildContext context) {
    //changeColor = true;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            "StateFull Widget Demo"
          ),
        ),
        body: changeColor ? Container(
          color: Colors.blue,
          child: const Center(
           child: Text(
             "Hello World Statefull Widget!"
           ),
          ),
        ) : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              FlatButton(onPressed: (){
                setState((){
                  changeColor = !changeColor;
                });
              }, child: Text("Loading"))
            ],
          ),
        ),
      ),
    );
  }
}

class DemoRow extends StatefulWidget {
  const DemoRow({Key? key}) : super(key: key);

  @override
  State<DemoRow> createState() => _DemoRowState();
}

class _DemoRowState extends State<DemoRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(
        "Demo Row"
      ),
    ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hiiii"),
            Text("Hello")
          ],
        ),
      ),
    );
  }
}

class DemoContainers extends StatefulWidget {
  const DemoContainers({Key? key}) : super(key: key);

  @override
  State<DemoContainers> createState() => _DemoContainersState();
}

class _DemoContainersState extends State<DemoContainers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          width: 400,
          height: 400,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget>[
              Text("Image"),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  color: Colors.blue,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Ankit"), Text("24/7/22")],),
                    Text("www.google.com")
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
