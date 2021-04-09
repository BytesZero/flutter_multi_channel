import 'package:flutter/material.dart';
import 'my_home_page.dart';

/// Zero
/// GitHub: https://github.com/yy1300326388
/// JueJin: https://juejin.cn/user/764915820276439
/// CSDN: https://zhengsl.blog.csdn.net


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter 多渠道打包示例'),
    );
  }
}
