import 'package:app_demo/mgr/i_router.dart';
import 'package:app_demo/page/home_page.dart';
import 'package:app_demo/page/login_page.dart';
import 'package:app_demo/page/welcome_page.dart';
import 'package:fluro/fluro.dart';
import 'package:fluro/src/fluro_router.dart';

class RProvider implements IRouterProvider {
  static String welcomePage = '/welcome';
  static String homePage = '/home';
  static String loginPage = '/login';

  @override
  void initRouter(FluroRouter router) {
    print('初始化了： $welcomePage, $homePage, $loginPage');
    router.define(welcomePage, handler: Handler(handlerFunc: (_, __) => WelcomePage()));
    router.define(homePage, handler: Handler(handlerFunc: (_, __) => HomePage()));
    router.define(loginPage, handler: Handler(handlerFunc: (_, __) => LoginPage()));
  }
}
