[![License MIT](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://raw.githubusercontent.com/angelcs1990/GQGesVCTransition/master/LICENSE)&nbsp;
[![](https://img.shields.io/badge/platform-iOS-brightgreen.svg)](http://cocoapods.org/?q=GQGesVCTransition)&nbsp;
[![support](https://img.shields.io/badge/support-iOS7.0%2B-blue.svg)](https://www.apple.com/nl/ios/)&nbsp;

# GQGesVCTransition
支持滑动手势返回   支持iOS7以上系统，完美与ScrollView兼容，可自定义滑动返回范围，可以设置某个视图不响应手势，也可设置指定导航控制器不响应我们自己的手势

## Overview

![Demo Overview](https://github.com/g763007297/GQGesVCTransition/blob/master/Screenshot/demo.gif)

## CocoaPods

1.在 Podfile 中添加 pod 'GQGesVCTransition'。

2.执行 pod install 或 pod update。

3.导入 GQGesVCTransition.h。

## Basic usage

1.下载 GQGesVCTransition 文件夹内的所有内容 包括GQGesVCTransition.h和GQGesVCTransition.m。

2.将 GQGesVCTransition 内的源文件添加(拖放)到你的工程。

3.在Appdelegate中引用头文件 GQGesVCTransition.h。

4.最后在Appdelegate.m中添加一句代码加入手势返回。

``` objc

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  //一句话给你的app添加手势返回
  [GQGesVCTransition validateGesBack];
  return YES;
}

```

##Support

欢迎指出bug或者需要改善的地方，欢迎提出issues，或者联系qq：763007297， 我会及时的做出回应，觉得好用的话不妨给个star吧，你的每个star是我持续维护的强大动力。
