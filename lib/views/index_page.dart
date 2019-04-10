

import 'package:flutter/material.dart';
import '../components/list.dart';
import '../pages/demo0.dart';
class IndexPage extends StatefulWidget {
  @override
  IndexPageState createState() => new IndexPageState();

}

class IndexPageState extends State<IndexPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('功能'),
      ),
      body:

        SimpleBarChart.withSampleData()
      
//         new Container(
        
        
//         child:new ShoppingList(
//         products: <Product>[
//           new Product(name: '研发平台-前端技术规划'),
// new Product(name: '研发平台-后端优化方案'),
// new Product(name: '研发平台-部署方案设计'),
// new Product(name: '表格控件QAF支持'),
// new Product(name: '表格控件支撑ERPv5的功能开发'),
// new Product(name: '表格控件支撑DMS迁移的相关功能开发'),
// new Product(name: '表格控件服务端分页功能完善和推广'),
// new Product(name: '表格控件和分布式缓存的结合'),
// new Product(name: '表格控件的应用的简化'),
// new Product(name: '小控件功能完善和bug修改'),
// new Product(name: '搜索帮助、树形搜索帮助、多选搜索帮助功能优化'),
// new Product(name: '布局控件的开发和维护'),
// new Product(name: 'QAF的小控件的维护'),
// new Product(name: '自定义Form控件的开发和维护'),
// new Product(name: '图表控件的开发和维护'),
// new Product(name: '基础服务：权限的开发和维护'),
// new Product(name: '架构发版'),
// new Product(name: '基础服务：用户、角色的开发和维护'),
// new Product(name: '基础服务：组织机构的开发和维护'),
// new Product(name: '基础服务：变更管理、编号的开发和维护'),
// new Product(name: '基础服务：标准查询用例的开发'),
// new Product(name: 'QAF的基础服务的维护'),
// new Product(name: '移动控件设计与开发'),
// new Product(name: '多租户的设计与验证'),
// new Product(name: '多租户的相关基础服务开发'),
// new Product(name: '统一模型层支持更多的格式化功能'),
// new Product(name: '队列设计和优化'),
// new Product(name: '去中央节点，将内存锁、用户等保存到分布式缓存'),
// new Product(name: '分布式缓存的选型和验证'),
// new Product(name: '提供分布式缓存的功能给业务项目'),
// new Product(name: '加入ERPv4和ERPv5共同运行的支持'),
// new Product(name: '服务修改为基于SpringCloud格式'),
// new Product(name: '服务注册和发现修改为使用Eureka'),
// new Product(name: '增加微服务监控功能'),
// new Product(name: '拆除ERP的包'),
// new Product(name: 'JVM内存跟踪，显著降低ERPv5的内存占用'),
// new Product(name: '标准页面模板开发'),
// new Product(name: '控件和API展示开发'),
// new Product(name: '登录加入验证码功能'),
// new Product(name: '登录加入黑名单功能'),
// new Product(name: '加入会话超时功能'),
// new Product(name: '加入配置信息的基础服务'),
// new Product(name: '加入服务器测试功能'),
// new Product(name: '统一模型层加入一级缓存功能'),
// new Product(name: 'PAAS主页制作'),
// new Product(name: '加入三套默认主题，并且可以按照用户切换'),
// new Product(name: '消息优化，增加多行显示，增加发送，增加表格消息的显示'),
// new Product(name: '架构支持通过选择绘制审批流'),
// new Product(name: '部署方案验证和设计'),
// new Product(name: '制作公有云，本地docker，本地windows的快速安装方案'),
// new Product(name: 'ERPv4的技术支持'),
// new Product(name: 'Redis，Nginx，Eureka，RabbitMQ的安装和配置'),
// new Product(name: 'DMS的迁移准备和汇报'),
// new Product(name: 'Show项目中控件Demo的制作'),
// new Product(name: 'Show项目中标准用例的需求准备'),
// new Product(name: 'Show项目中标准用例的研发'),
// new Product(name: 'DevOps整体方案设计'),
// new Product(name: 'TMW系统原型设计实现'),
// new Product(name: '监控系统规划设计'),
// new Product(name: 'CI/CD设计'),
// new Product(name: 'IDE优化改造规划，设计'),
// new Product(name: '平台项目支撑及人员协调'),
// new Product(name: '监控中心日志监控功能'),
// new Product(name: '监控中心行为分析功能完善'),


//           new Product(name: 'APP智能控制、APP智'),
// new Product(name: '高效锐角刀头、充高效锐角'),
// new Product(name: '高效锐角刀头、充高效锐角'),
// new Product(name: '全身水洗，全球电全身水洗'),
// new Product(name: '全身水洗，全球电全身水洗'),
// new Product(name: '合金锐角刀头、超合金锐角'),
// new Product(name: '干电池式、不锈钢干电池式'),
// new Product(name: '干电池式、不锈钢干电池式'),
// new Product(name: '全身水洗，干/湿全身水洗'),
// new Product(name: '全身水洗，干/湿全身水洗'),
// new Product(name: '内置充电插头、8内置充电'),
// new Product(name: '内置充电插头、8内置充电'),
// new Product(name: '电源线式充电、8电源线式'),
// new Product(name: '电源线式充电、8电源线式'),
// new Product(name: '智能电量显示、智智能电量'),
// new Product(name: '智能电量显示、智智能电量'),
// new Product(name: '旋金铝制浮动热板旋金铝制'),
// new Product(name: '耐高温陶瓷板、6耐高温陶'),
// new Product(name: '喷雾市蒸汽功能，喷雾市蒸'),
// new Product(name: '智能蓝牙连接、智智能蓝牙'),
// new Product(name: '智能蓝牙连接、智智能蓝牙'),
// new Product(name: '智能蓝牙连接、智智能蓝牙'),
// new Product(name: 'APP智能控制、APP智'),
// new Product(name: '高效锐角刀头、充高效锐角'),
// new Product(name: '高效锐角刀头、充高效锐角'),
// new Product(name: '全身水洗，全球电全身水洗'),
// new Product(name: '全身水洗，全球电全身水洗'),
// new Product(name: '合金锐角刀头、超合金锐角'),
// new Product(name: '干电池式、不锈钢干电池式'),
// new Product(name: '干电池式、不锈钢干电池式'),
// new Product(name: '全身水洗，干/湿全身水洗'),
// new Product(name: '全身水洗，干/湿全身水洗'),
// new Product(name: '内置充电插头、8内置充电'),
// new Product(name: '内置充电插头、8内置充电'),
// new Product(name: '电源线式充电、8电源线式'),
// new Product(name: '电源线式充电、8电源线式'),
// new Product(name: '智能电量显示、智智能电量'),
// new Product(name: '智能电量显示、智智能电量'),
// new Product(name: '旋金铝制浮动热板旋金铝制'),
// new Product(name: '耐高温陶瓷板、6耐高温陶'),
// new Product(name: '喷雾市蒸汽功能，喷雾市蒸'),
// new Product(name: '智能蓝牙连接、智智能蓝牙'),
// new Product(name: '智能蓝牙连接、智智能蓝牙'),
// new Product(name: '智能蓝牙连接、智智能蓝牙'),
// new Product(name: 'APP智能控制、APP智'),
// new Product(name: '高效锐角刀头、充高效锐角'),
// new Product(name: '高效锐角刀头、充高效锐角'),
// new Product(name: '全身水洗，全球电全身水洗'),
// new Product(name: '全身水洗，全球电全身水洗'),
// new Product(name: '合金锐角刀头、超合金锐角'),
// new Product(name: '干电池式、不锈钢干电池式'),
// new Product(name: '干电池式、不锈钢干电池式'),
// new Product(name: '全身水洗，干/湿全身水洗'),
// new Product(name: '全身水洗，干/湿全身水洗'),
// new Product(name: '内置充电插头、8内置充电'),
// new Product(name: '内置充电插头、8内置充电'),
// new Product(name: '电源线式充电、8电源线式'),
// new Product(name: '电源线式充电、8电源线式'),
// new Product(name: '智能电量显示、智智能电量'),
// new Product(name: '智能电量显示、智智能电量'),
// new Product(name: '旋金铝制浮动热板旋金铝制'),
// new Product(name: '耐高温陶瓷板、6耐高温陶'),
// new Product(name: '喷雾市蒸汽功能，喷雾市蒸'),
// new Product(name: '智能蓝牙连接、智智能蓝牙'),

//         ],
//       ),
//     )
    );
  }

}