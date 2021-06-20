import 'package:app_demo/mgr/ext.dart';
import 'package:app_demo/widget/load_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sp_util/sp_util.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final List<String> _guideList = ['app_start_1', 'app_start_2', 'app_start_3'];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      // 一旦打开页面，记录已经打开过的信息
      await SpUtil.getInstance();
      SpUtil.putBool('isFirstOpenApp', false);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _goLogin() {
    // NavigatorUtils.push(context, LoginRouter.loginPage, replace: true);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.backgroundColor,
      child: const FractionallyAlignedSizedBox(
        heightFactor: 0.3,
        widthFactor: 0.33,
        leftFactor: 0.33,
        bottomFactor: 0,
        child: LoadAssetImage('logo'),
      ),
      // child: _status == 0
      //     ? const FractionallyAlignedSizedBox(
      //         heightFactor: 0.3, widthFactor: 0.33, leftFactor: 0.33, bottomFactor: 0, child: LoadAssetImage('logo'))
      //     : Swiper(
      //         key: const Key('swiper'),
      //         itemCount: _guideList.length,
      //         loop: false,
      //         itemBuilder: (_, index) {
      //           return LoadAssetImage(
      //             _guideList[index],
      //             key: Key(_guideList[index]),
      //             fit: BoxFit.cover,
      //             width: double.infinity,
      //             height: double.infinity,
      //             format: ImageFormat.webp,
      //           );
      //         },
      //         onTap: (index) {
      //           if (index == _guideList.length - 1) {
      //             _goLogin();
      //           }
      //         },
      //       ),
    );
  }
}
