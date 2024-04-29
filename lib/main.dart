import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( //Scaffold＝建物を建てる時の土台のようなもの
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:ListView(
        children: [
          ListTile(
            leading: Icon(Icons.map),
            title: Text('地図'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              //ここにタップした時の処理
            },
          ),
          ListTile(
            leading: Icon(Icons.album),
            title: Text('アルバム'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              //ここにタップした時の処理
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('電話'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              //ここにタップした時の処理
            },
          ),
        ],

      ),
    );
  }
}
