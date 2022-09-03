import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget{
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
            tooltip: 'Navigation Menu',
            onPressed: null,
            icon: Icon(Icons.menu)
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
            tooltip: 'Search',
          ),
        ],
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
      floatingActionButton: const FloatingActionButton(
          onPressed: null,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}

void main(){
  runApp(
    const MaterialApp(
      title: 'Flutter Tutorial',
      home: TutorialHome(),
    ),
  );
}
