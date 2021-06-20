import 'package:fluro/fluro.dart';

/// interface => I
abstract class IRouterProvider {
  void initRouter(FluroRouter router);
}

/// xxxxx
///   - IRouterProvider
///     - Object
///
///
class XXXXX implements IRouterProvider {
  @override
  void initRouter(FluroRouter router) {
    print('${runtimeType}.initRouter 我什么都没做');
  }
}

// void xxxxx(){
//   var i = IRouterProvider();
// }
