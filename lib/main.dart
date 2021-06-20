import 'package:flutter/material.dart';

import 'mgr/routers.dart';
import 'page/home_page.dart';

void main() {
  Routes.initRoutes();
  runApp(MyApp());
}

/// App主体启动类型
///
/// 初始化网络
/// 初始化log
/// 初始化路由
class MyApp extends StatelessWidget {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: Routes.router.generator, // y
      navigatorKey: navigatorKey, // y
      onUnknownRoute: (_) => MaterialPageRoute<void>(builder: (BuildContext context) => Container()),
      home: HomePage(),
    );
  }
}
