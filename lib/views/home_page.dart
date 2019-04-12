

import 'package:flutter/material.dart';
import './index_page.dart';
import './contacts_page.dart';
import './person_page.dart';
import './message_page.dart';

class HomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => new _MyHomePageState();

}

class _MyHomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this, length:4);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    
      body: new MessagePage(),
      
      // new TabBarView(
      //   controller:controller,
      //   children: <Widget>[
      //     new MessagePage(),
      //     new IndexPage(),
      //     new ContactsPage(),
      //     new PersonPage()
      //   ],
      // ),
      
      // bottomNavigationBar: new Material(
      //   color: Colors.primaries[5],
      //   child: new TabBar(
      //     controller: controller,
      //       // preferredSize: const Size.fromHeight(48.0),
      //     tabs: <Widget>[
      //       new Tab(text: '概览',icon: new Icon(Icons.home)),
      //       new Tab(text: '功能',icon: new Icon(Icons.apps)),
      //       new Tab(text: '联系人',icon: new Icon(Icons.message)),
      //       new Tab(text: '个人中心',icon: new Icon(Icons.person))
      //     ],
      //   ),
      // ),
    );
  }

}