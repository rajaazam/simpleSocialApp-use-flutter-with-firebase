import 'package:flutter/material.dart';
class Tapbarpage extends StatefulWidget {
  const Tapbarpage({ Key? key }) : super(key: key);

  @override
  _TapbarpageState createState() => _TapbarpageState();
}

class _TapbarpageState extends State<Tapbarpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [

              Tab(text: 'Home',),
              Tab(text: 'HeadLines',),
              Tab(text: 'Sport News',),
               
            ],)
          ),
        )),
        );
      
    
  }
}