import 'package:flutter/material.dart';

import 'package:english_words/english_words.dart';

import './views/home_page.dart';

import 'package:fusion/template/launcher.dart';

// import 'dart:async';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fusion 3.0.0 移动框架 示例',
      debugShowCheckedModeBanner:true,
      home: new HomePage()
      // new QMSplashScreen(
      //   appName: '一汽集团驾驭舱',
      //   description: '     整合业务数据 \n 体现集团运营状态',
      //   callback:() {
      //       print('QMLog:欢迎页回调');
      //       Navigator.push(
      //         context,
      //         new MaterialPageRoute(builder: (context) => new HomePage()),
      //       );
      //     },
      // ),
      
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



class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}


class RandomWordsState extends State<RandomWords> {

  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize:18.0);
  final _saved = new Set<WordPair>();

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      // 对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
      // 在偶数行，该函数会为单词对添加一个ListTile row.
      // 在奇数行，该函数会添加一个分割线widget，来分隔相邻的词对。
      // 注意，在小屏幕上，分割线看起来可能比较吃力。
      itemBuilder: (context, i) {
        // 在每一列之前，添加一个1像素高的分隔线widget
        if (i.isOdd) return new Divider();

        // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整），比如i为：1, 2, 3, 4, 5
        // 时，结果为0, 1, 1, 2, 2， 这可以计算出ListView中减去分隔线后的实际单词对数量
        final index = i ~/ 2;
        // 如果是建议列表中最后一个单词对
        if (index >= _suggestions.length) {
          // ...接着再生成10个单词对，然后添加到建议列表
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved =_saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color:alreadySaved ? Colors.red : null,
      ),
      onTap:(){
        setState((){
          if(alreadySaved){
            _saved.remove(pair);
          }else{
            _saved.add(pair);
          }
        });
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);
    return new Scaffold (
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ]
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved(){
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context){
          final tiles =_saved.map(
            (pair) {
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style:_biggerFont
                ) 
              );
            }
          );
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return new Scaffold(appBar: new AppBar(
            title:new Text('Saved Suggestions')
            ),
            body: new ListView(children:divided)
          );
        }
      )
    );
  }
}


// class QMSplashScreen extends StatefulWidget {

//   final String appName;     // 应用名
//   final String description; // 应用描述
//   final Color background;   // 欢迎页面背景色
//   final IconData icon;      // 图标
//   final int duration;       // 间隔时间
//   final VoidCallback callback;  // 初始化后的回调

//   QMSplashScreen(
//      {
//       this.appName = "Fusion3.0",
//       this.description = "Fustion3.0 Platform \n  For Everyone", 
//       this.background = Colors.blueAccent, 
//       this.icon = Icons.shopping_cart,
//       this.duration = 2,
//       this.callback
//     }
//   );

//   @override
//   _QMSplashScreenState createState() => _QMSplashScreenState();

// }

// class _QMSplashScreenState extends State<QMSplashScreen> {

//   @override
//   void initState(){
//     super.initState();
//     Timer(Duration(seconds:5),widget.callback);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Stack(
//         fit:StackFit.expand,
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(color: Colors.blueAccent),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       CircleAvatar(
//                         backgroundColor: Colors.white,
//                         radius: 50.0,
//                         child: Icon(
//                           widget.icon ?? Icons.shopping_cart,
//                           color: widget.background,
//                           size: 60.0,
//                         ),
//                       ),
//                       Padding(
//                         padding:EdgeInsets.only(top: 10.0) ,
//                         ),
//                         Text(
//                           widget.appName,
//                           style:TextStyle(
//                             color:Colors.white, 
//                             fontSize:24.0,
//                             fontWeight:FontWeight.bold
//                             )
//                         )
//                     ],
//                   ),
//                 ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       CircularProgressIndicator(),
//                       Padding(padding: EdgeInsets.only(top:20.0),
//                       ),
//                       Text(widget.description, 
//                       style: TextStyle(
//                         color: Colors.white, 
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.bold
//                       )
//                       )
//                     ],
//                     ),
//                 ),
//             ],
//             )
//         ],
//       ),
//       );
//   }

// }

