import 'package:app_demo/mgr/fluro_navigator.dart';
import 'package:app_demo/page/r_provider.dart';
import 'package:flutter/material.dart';
import 'package:sp_util/sp_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bool isFirstOpenApp = true;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      // 读取本地存的历史信息，是不是第一次登陆
      await SpUtil.getInstance();
      if (SpUtil.getBool('isFirstOpenApp', defValue: true)!) {
        //go to
        NavigatorUtils.push(context, RProvider.welcomePage, replace: true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('主页')),
      body: Container(
        color: Colors.blueAccent,
      ),
    );
  }
}
