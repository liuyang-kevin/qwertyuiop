import 'package:app_demo/page/r_provider.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'i_router.dart';

/// 路由管理器
class Routes {
  static final List<IRouterProvider> _listRouter = [];
  static final FluroRouter router = FluroRouter();

  static void initRoutes() {
    /// 指定路由跳转错误返回页
    router.notFoundHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      debugPrint('未找到目标页');
      return Container();
    });

    _listRouter.clear();

    /// 各自路由由各自模块管理，统一在此添加初始化
    _listRouter.add(XXXXX());
    _listRouter.add(RProvider());

    /// 初始化路由
    _listRouter.forEach((routerProvider) {
      routerProvider.initRouter(router);
    });
  }
}
