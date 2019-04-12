import 'package:flutter/material.dart';

import './views/home_page.dart';

import 'package:fusion/index.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    //获取网络数据
  void getContent() {
    // var param = {"serviceName":"FusionCoreService","methodName":"doLogin","paraValues":{"password":'1234qwer',"devMode":false,"ipAddress":'10.133.64.25',"client":"800","language":"zh_CN","userName":'ZHANGSX'} ,"client":800,"userName":"SUPER","tran":"TLogin","language":"zh_CN","sessionID":"SUPER","guid":"06e587a4-6329-4120-8849-e62394b919a7","backendVersion":""};

    // QMHttpService.post("", (data) {
    //   print(data);
    //   // User user = User.fromJson(data);
    //   // setState(() {
    //   //   // name = user.name;
    //   //   // email = user.email;
    //   //   // picList = user.pics;
    //   // });
    // },params:param , errorCallBack: (errorMsg) {
    //   print("error:" + errorMsg);
    // });
  }

    // BuildContext _ctx = context;
    _gotoMainPG(BuildContext context) {
      // getContent();

      // QMHttpService.post('',（data){

      // },{params:''});


      Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => new HomePage()),
      );
    }

    return new MaterialApp(
      title: 'Fusion 3.0.0 移动框架 示例',
      debugShowCheckedModeBanner: true,
      home: //new HomePage()
      // new DemoPage()
          new QMSplashScreen(
        appName: '一汽集团驾驭舱',
        description: '     整合业务数据 \n 体现集团运营状态',
        callback: _gotoMainPG,
      ),
    );
  }

//   @override
//  _MyHomePageState createState() => new _MyHomePageState();
  // @override
  // Widget build(BuildContext context) {
  //   final wordPair = new WordPair.random();
  //   return new MaterialApp(
  //     title: 'Welcome to Flutter',
  //     home: new Scaffold(
  //       appBar: new AppBar(
  //         title: new Text('Welcome to Flutter1'),
  //       ),
  //       body: new Center(
  //         child: RandomWords(),
  //         // child: new Text(wordPair.asPascalCase),
  //         // child: new Text('Hello World'),
  //       ),
  //     ),
  //   );
  // }
}


