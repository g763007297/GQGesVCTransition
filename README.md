[![License MIT](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://raw.githubusercontent.com/angelcs1990/SRouter/master/LICENSE)&nbsp;
[![](https://img.shields.io/badge/platform-iOS-brightgreen.svg)](http://cocoapods.org/?q=SRouter)&nbsp;
[![support](https://img.shields.io/badge/support-iOS7.0%2B-blue.svg)](https://www.apple.com/nl/ios/)&nbsp;

# GQGesVCTransition
支持滑动手势返回   支持iOS7以上系统，完美与ScrollView兼容，可自定义滑动返回范围

## Overview

![Demo Overview](https://github.com/g763007297/GQGesVCTransition/blob/master/Screenshot/demo.gif)

## Basic usage

1.下载 GQGesVCTransition 文件夹内的所有内容 包括GQGesVCTransition.h和GQGesVCTransition.m。

2.将 GQGesVCTransition 内的源文件添加(拖放)到你的工程。

3.在Appdelegate中引用头文件 GQGesVCTransition.h。

4.最后在Appdelegate.m中添加一句代码加入手势返回。

``` objc

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GQGesVCTransition validateGesBackWithType:GQGesVCTransitionTypePanWithPercentRight withScreenWidthPercent:0 withRequestFailToLoopScrollView:YES];
  return YES;
}

```
欢迎指出错误的方法或者需要改善的地方。联系qq：763007297
