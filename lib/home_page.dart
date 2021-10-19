import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    int days = 30;
    String name = "Mukesh";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Test", style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 40,
            fontStyle: FontStyle.italic),),
      ),
      body: Center(
        child: Text("Hello $name Welcome to $days World"),
      ),
      drawer: Drawer(),
    );
  }

}