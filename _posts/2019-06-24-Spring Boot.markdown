---
layout: post
title:  "Sprint Boot"
date:   2019-06-24 22:05:00
categories: 其它
---


**什么是Spring Boot**
Spring Boot 是 Spring 开源组织下的子项目，是 Spring 组件一站式解决方案，主要是简化了使用 Spring 的难度，简省了繁重的配置，提供了各种启动器，开发者能快速上手。

**链接**
面试题目
https://blog.csdn.net/zl1zl2zl3/article/details/83715633

学习地址
https://blog.csdn.net/ityouknow/article/details/80490926


JAVA面试题：
https://blog.csdn.net/u010105645/article/details/82052505


## 面试足迹
1. java中的"=="与"equal"。
"=="对比的是地址，"equal"对比的是数值。

2. java中的代码执行顺序。
* 父类静态成员和静态初始化块 ，按在代码中出现的顺序依次执行
* 子类静态成员和静态初始化块 ，按在代码中出现的顺序依次执行
结论：对象初始化的顺序，先静态方法，再构造方法，每个又是先基类后子类
* 父类实例成员和实例初始化块 ，按在代码中出现的顺序依次执行
* 父类构造方法
* 子类实例成员和实例初始化块 ，按在代码中出现的顺序依次执行
* 子类构造方法

3. 运行时异常与一般异常的异同
运行时异常runtime exception和一般异常checked exception，对于后者而言，JAVA要求程序员对其进行catch。所以，不管我们是否愿意，只能自己去写一大堆catch块去处理可能的异常。
运行时异常我们可以不处理。这样的异常由虚拟机接管。出现运行时异常后，系统会把异常一直往上层抛，一直遇到处理代码。
如果不对运行时异常进行处理，那么出现运行时异常之后，要么是线程中止，要么是主程序终止。　


