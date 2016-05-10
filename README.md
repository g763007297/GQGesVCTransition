[![License MIT](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://raw.githubusercontent.com/angelcs1990/SRouter/master/LICENSE)&nbsp;
[![](https://img.shields.io/badge/platform-iOS-brightgreen.svg)](http://cocoapods.org/?q=SRouter)&nbsp;
[![support](https://img.shields.io/badge/support-iOS7.0%2B-blue.svg)](https://www.apple.com/nl/ios/)&nbsp;

# GQGesVCTransition
支持滑动手势返回   支持iOS7以上系统，完美与ScrollView兼容，可自定义滑动返回

## Overview

![Demo Overview](https://github.com/g763007297/GQGesVCTransition/blob/master/Screenshot/demo.gif)

## Basic usage
``` objc
  引用头文件#import "GQGesVCTransition.h"
  
  一句话加入手势返回:
  [GQGesVCTransition validateGesBackWithType:GQGesVCTransitionTypePanWithPercentRight withScreenWidthPercent:0 withRequestFailToLoopScrollView:YES];
  
```
