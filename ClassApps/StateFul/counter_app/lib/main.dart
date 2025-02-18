import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State createState() => _CounterAppState();
}

class _CounterAppState extends State {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title:const Text("Counter App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 134, 8, 156),

        ),
        body:Center(
          child: Text("$count",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            count++;
            setState(() {});
          },
          backgroundColor: Color.fromARGB(255, 158, 21, 167),
          child:const Text("+"),
        ),
      ),
    );
  }
}