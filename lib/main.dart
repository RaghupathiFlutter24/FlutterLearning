import 'package:flutter/material.dart';

class DrawerSideMenu extends StatelessWidget{
  const DrawerSideMenu({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: const Text('Drawer Demo'),
      ),
      drawer: Drawer(
        child: DrawerHeader(
         // alignment: Alignment.bottomCenter,
          child: ListView(
           // shrinkWrap: true,
            children: <Widget>[
            ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Message'),
                  onTap: (){
                    print('Message Button is Pressed');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
            ],
          ),
        ),
        // child: ListView(
        //   padding: EdgeInsets.zero,
        //   children: <Widget>[
        //      DrawerHeader(
        //       decoration: BoxDecoration(
        //         color: Colors.blue,
        //       ),
        //         child: Text(''
        //             'Drawer Header',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 24,
        //         ),
        //         ),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.message),
        //       title: Text('Message'),
        //       onTap: (){
        //         print('Message Button is Pressed');
        //       },
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.account_circle),
        //       title: Text('Profile'),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.settings),
        //       title: Text('Settings'),
        //     ),
        //
        //   ],
        // ),
      ),
    );
  }

}

void main(){
  runApp(
    const MaterialApp(
      title: 'Material Drawer',
      home: DrawerSideMenu(),
    ),
  );
}