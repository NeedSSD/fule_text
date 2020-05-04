# FuleText
![Pub Version](https://img.shields.io/pub/v/fule_text?style=flat-square)
![GitHub](https://img.shields.io/github/license/NeedSSD/fule_text?style=flat-square)

一个可以自动适应父容器宽度的文本组件，主要用于解决不同机型文本超出容器的问题。

<img src="https://i.loli.net/2020/05/04/uRGLhntNPSqrpIs.jpg"  width="40%"/>

上方样例的 [源码](https://pub.dev/packages/fule_text#-example-tab-)

## 开始

### 安装

该项目还在探索阶段，对外接口可能会存在较大变化，请选择好使用的版本。

#### 在pubspec.yaml中添加依赖包

##### 使用相对稳定的版本

``` yaml
fule_text: '>=0.1.0 <0.2.0'
```
##### 或始终使用最新版本

``` yaml
fule_text: '^0.1.0'
```

#### 获取依赖包

```shell
$ flutter pub get
```

### 引入

``` dart
import 'package:fule_text/fule_text.dart';
```

### 参数
| 属性 | 类型 | 默认值 | 必填 | 说明 | 组件版本 |
| --- | --- | --- | :---: | --- | :---: |
| text | String | - | 是 | 内容 | 0.1.0 |
| style | TextStyle | - | 否 | 样式 | 0.1.0 |
| textAlign | TextAlign | TextAlign.center | 否 | 对齐 | 0.1.0 |
| textDirection | TextDirection | TextDirection.ltr | 否 | 方向 | 0.1.0 |
