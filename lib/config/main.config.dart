import '../views/home_page.dart';



Map<String,Object> config = {
  'mainPage':(_) => new HomePage(),
};

const String baseURL = "http://10.133.92.168/QMERP/RemoteCallManager?fromClient=QMBS&ModuleName=SYS&service=FusionCoreService";

// // 路由配置
// Map<String, WidgetBuilder> routers = {
//         '/router/demo01': (_) => new DemoPage(),
//         // '/router/home': (_) => new RouterHomePage(),
//       };