import 'package:flutter/material.dart';
import 'my_home_page.dart';

/// Zero
/// GitHub: https://github.com/yy1300326388
/// JueJin: https://juejin.cn/user/764915820276439
/// CSDN: https://zhengsl.blog.csdn.net

/// 这里定义环境变量配置
class EnvironmentConfig {
  static const APP_CHANNEL = String.fromEnvironment('APP_CHANNEL');
  static const OTHER_VAR = String.fromEnvironment('OTHER_VAR');
}

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
