import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class HintLabel extends StatelessWidget {
  final String text;
  // ignore: use_key_in_widget_constructors
  const HintLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.amber[200]),
      child: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: Text(text, style: TextStyle(color: Colors.grey[700],)
    )));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Statless widjet sample',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        backgroundColor: Colors.amber[300],
        appBar: AppBar(
          title: const Text('Labels'),),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              HintLabel('my custom lebel 1'),
              SizedBox(height: 8.0,),
              Text('text widget'),
              SizedBox(height: 8.0,),
              HintLabel('my custom label 2')
            ]),  
          )),
    );
  }
}