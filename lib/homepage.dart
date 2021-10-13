import 'package:firebaseapp/Headlines.dart';
import 'package:firebaseapp/SportNews.dart';
import 'package:firebaseapp/drawer.dart';
import 'package:firebaseapp/home1.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  // ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            //backgroundColor: Colors.black,
            appBar: AppBar(
                backgroundColor: Colors.red,
                title:Center(child: Text('Social Book')),
                // elevation: 0,
                // brightness: Brightness.light,
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/Search");
                    },
                    icon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white,
                    ),
                    // alignment: Alignment.bottomLeft,
                  ),
                  
                ],
                // leading:Actions(actions: actions, child: child) ,

                bottom: TabBar(
                  isScrollable: true,
                  indicatorWeight: 7, indicatorColor: Colors.white,

                  labelStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  //indicator: BoxDecoration(
                  //borderRadius: BorderRadius.circular(50), // Creates border
                  // color: Colors.white),
                  tabs: [
                    Tab(
                      text: 'Home',
                    ),
                    Tab(
                      text: 'HeadLines',
                    ),
                    Tab(
                      text: 'Sport News',
                    ),
                  ],
                )),
            drawer: mydrawer(),
            body: SafeArea(
              child: Container(
                child: TabBarView(
                  children: [
                    Home1(),
                    headlinesPages(),
                   
                    SportPage(),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}