import 'package:flutter/material.dart';
import 'package:flutter_multi_channel/main.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'App 渠道：${EnvironmentConfig.APP_CHANNEL}',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              '其他参数：${EnvironmentConfig.OTHER_VAR}',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            EnvironmentConfig.APP_CHANNEL == 'Mi'
                ? Text(
                    "小米渠道显示",
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
