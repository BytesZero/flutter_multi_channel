# Flutter 多渠道打包详解
![image](https://user-images.githubusercontent.com/8764899/114137633-0e7d1580-993f-11eb-9287-55265649d0c1.png)

## 多渠道打包介绍
多渠道打包的主要作用是满足产品的运营需求，统计渠道和活动效果。
在之前原生（Android、iOS）开发 App 有各种工具来辅助我们完成多渠道打包。
在我们开发过程中也需要为渠道功能负责，原生的开发工具就基本满足我们调试渠道包内容，但是在 Flutter 上需要更多的配置才可以完成，下文将一一介绍从配置=>调试=>打包的全部流程和细节。

## 核心内容

```Shell
# run shell
flutter run --dart-define=APP_CHANNEL=ZeroFlutter --dart-define=OTHER_VAR=Dart
# build apk/ios
flutter build [apk/ios] --dart-define=APP_CHANNEL=ZeroFlutter --dart-define=OTHER_VAR=Dart
# main.dart
class EnvironmentConfig {
  static const APP_CHANNEL = String.fromEnvironment('APP_CHANNEL');
  static const OTHER_VAR = String.fromEnvironment('OTHER_VAR');
}
```

## 用到的脚本
使用前请是用 `chmod a+x fapkc.sh` 赋予可运行权限

- [fapk_channel_all.sh](/shell/fapk_channel_all.sh)
- [fapkc.sh](/shell/fapk_channel_all.sh)

## 详细文章链接
- [掘金](https://juejin.cn/user/764915820276439)
- [CSDN](https://juejin.cn/user/764915820276439)


### 关于我

- 15 年～18 年，使用 `Android` 原生做智能硬件相关的  App 研发
- 18 年 5 月，一次偶然的机会接触到了 `Flutter` ，然后开始自学，可以看 [weather_flutter](https://github.com/yy1300326388/weather_flutter) 是我练习 Flutter 的入门实战项目（我现在依然觉得他非常适合 Flutter 入门练习使用）
- 18 年 8 月，顶着巨大的压力（Flutter 当时还没有 Release 1.0）开始使用 Flutter 开发企业级项目，并且开发维护了十几个 Flutter 插件包（因为当时插件资源非常的匮乏）
- 截止目前主导并参与上线了 4 款企业级`Flutter` App，当前正在负责开发的一款 App 累计用户 `120W+`，使用 `Flutter` 得到了极佳的体验

### 关注我

- 遇到问题可以找我帮助解决（联系方式在 [`GitHub`](https://github.com/yy1300326388) 主页）
- 持续分享优质的 `Flutter` 文章和视频
- 不定期分享 `Flutter` 开发小技巧
- 百万级 `Flutter` 应用架构经验

<p>
  <a href="https://zhengsl.blog.csdn.net">
    <img width="200" alt="csdn" src="https://raw.githubusercontent.com/yy1300326388/yy1300326388/main/images/follow/csdn_follow.png">
  </a>
  <a href="https://github.com/yy1300326388">
    <img width="200" alt="github" src="https://raw.githubusercontent.com/yy1300326388/yy1300326388/main/images/follow/github_follow.png">
  </a>
  <a href="https://juejin.cn/user/764915820276439">
    <img width="200" alt="juejin" src="https://raw.githubusercontent.com/yy1300326388/yy1300326388/main/images/follow/juejin_follow.png">
  </a>
</p>
