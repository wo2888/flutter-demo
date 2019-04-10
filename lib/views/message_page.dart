

import 'package:flutter/material.dart';
// import '../components/list.dart';

import 'package:myapp1/template/person/person.dart';
class MessagePage extends StatefulWidget {
  @override
  MessagePageState createState() => new MessagePageState();

}

class MessagePageState extends State<MessagePage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:

      new QMPersonCenter(
        bgImage: 'assets/images/common_user_background.png',
        desc: new QMPersonDescription(
          title: '集团驾驶舱',
          content: '一汽集团驾驶舱一期项目的整体成果概览'
        ),
        user: new QMPerson(
          name: '张善旭',
          photo: 'assets/images/avatar.png',
          desc: '系统架构员',
          list: [
            new QMPersonItem(
              name: '营业收入',
              category: '账务概览',
              time: '2019年3月',
              color: Colors.orange,
              completed: false,
            ),
            new QMPersonItem(
                name: "批售周报节选",
                category: "产销专题",
                time: "2019年3月",
                color: Colors.cyan,
                completed: true),
            new QMPersonItem(
                name: "批售月报节选",
                category: "产销专题",
                time: "2018年12月",
                color: Colors.pink,
                completed: false),
            new QMPersonItem(
                name: "账务概览-客户服务节选1",
                category: "账务概览",
                time: "2018年12月",
                color: Colors.cyan,
                completed: true),
            new QMPersonItem(
                name: "客户服务节选1",
                category: "客服专题",
                time: "2018年12月",
                color: Colors.cyan,
                completed: true),

          ]
        )
        )
      
    //    new Container(
        
    //     child:new ShoppingList(
    //     products: <Product>[
    //       new Product(name: 'FS829'),
    //       new Product(name: 'FS880'),
    //       new Product(name: 'FS881'),
    //       new Product(name: 'FS305'),
    //       new Product(name: 'FS306'),
    //       new Product(name: 'FS368'),
    //       new Product(name: 'FS312'),
    //       new Product(name: 'FS313'),
    //       new Product(name: 'FS390'),
    //       new Product(name: 'FS391'),
    //       new Product(name: 'FS355'),
    //       new Product(name: 'FS356'),
    //       new Product(name: 'FS378'),
    //       new Product(name: 'FS379'),
    //       new Product(name: 'FH6255'),
    //       new Product(name: 'FH6222'),
    //       new Product(name: 'FH6223'),
    //       new Product(name: 'FH6231'),
    //       new Product(name: 'FH6228'),
    //       new Product(name: 'FH6229'),
    //       new Product(name: 'FH6272'),
    //       new Product(name: 'FH6275'),
    //       new Product(name: 'FH6101'),
    //       new Product(name: 'FH6102'),
    //       new Product(name: 'FI9308'),
    //       new Product(name: 'FI9309'),
    //       new Product(name: 'FI9310'),
    //       new Product(name: 'FI9311'),
    //       new Product(name: 'FI9315'),
    //       new Product(name: 'FI9317'),
    //       new Product(name: 'FI9321'),
    //       new Product(name: 'FI9322'),
    //       new Product(name: 'FI9815'),
    //       new Product(name: 'FI9816'),
    //       new Product(name: 'FI9811'),
    //       new Product(name: 'FC9701'),
    //       new Product(name: 'FC9702'),
    //       new Product(name: 'FC9703'),
    //       new Product(name: 'FH9221'),
    //       new Product(name: 'FH9222'),
    //       new Product(name: 'FH9226'),
    //       new Product(name: 'FH9227'),
    //       new Product(name: 'FP9001'),
    //       new Product(name: 'FC5805'),
    //       new Product(name: 'FC5809'),
    //       new Product(name: 'FC5810'),
    //       new Product(name: 'FC5812'),
    //       new Product(name: 'FC5901'),
    //       new Product(name: 'FS7805'),
    //       new Product(name: 'FS7806'),
    //       new Product(name: 'FS5501'),
    //       new Product(name: 'FS5502'),
    //       new Product(name: 'FR5217'),
    //       new Product(name: 'FR5220'),
    //       new Product(name: 'FR5216'),
    //       new Product(name: 'FR5225'),
    //       new Product(name: 'FR5227'),
    //       new Product(name: 'FR5229'),
    //       new Product(name: 'FH6810'),
    //       new Product(name: 'FH6812'),
    //       new Product(name: 'FH6861'),
    //       new Product(name: 'FH7005'),
    //       new Product(name: 'FH7015'),
    //       new Product(name: 'FH7016'),
    //     ],
    // ), // new MyList()
    //   ),
    );
  }

}