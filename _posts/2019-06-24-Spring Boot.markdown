---
layout: post
title:  "Spring Boot"
date:   2019-06-24 22:05:00
categories: 其它
---


**什么是Spring Boot**

Spring Boot 是 Spring 开源组织下的子项目，是 Spring 组件一站式解决方案，主要是简化了使用 Spring 的难度，简省了繁重的配置，提供了各种启动器，开发者能快速上手。

**链接**

[面试题目](https://blog.csdn.net/zl1zl2zl3/article/details/83715633)

[spring的面试题目](https://blog.csdn.net/hrbeuwhw/article/details/79476988)

[学习地址](https://blog.csdn.net/ityouknow/article/details/80490926)

[JAVA面试题](https://blog.csdn.net/u010105645/article/details/82052505)

[Spring事务管理](https://www.yiibai.com/spring/spring_transaction_management.html)

[aop拦截原理](https://www.cnblogs.com/itlove/p/3644824.html)

[aop配置理解](https://www.jianshu.com/p/605ad9f5c186)

## 面试足迹

**运行时异常与一般异常的异同**

出现运行时异常后，系统会把异常一直往上层抛，一直遇到处理代码。如果没有处理块，到最上层，如果是多线程就由Thread.run()抛出，如果是单线程就被main()抛出。抛出之后，如果是线程，这个线程也就退出了。如果是主程序抛出的异常，那么这整个程序也就退出了。运行时异常是Exception的子类，也有一般异常的特点，是可以被Catch块处理的。只不过往往我们不对他处理罢了。也就是说，你如果不对运行时异常进行处理，那么出现运行时异常之后，要么是线程中止，要么是主程序终止。


**动态代理对象**

在动态代理技术里，由于不管用户调用代理对象的什么方法，都是调用开发人员编写的处理器的invoke方法（这相当于invoke方法拦截到了代理对象的方法调用）。并且，开发人员通过invoke方法的参数，还可以在拦截的同时，知道用户调用的是什么方法，因此利用这两个特性，就可以实现一些特殊需求，例如：拦截用户的访问请求，以检查用户是否有访问权限、动态为某个对象添加额外的功能。


**java的内存模型**


**spring的六个模块**

Spring Core，AOP，ORM，DAO，MVC，WEB，Context。

* core:

ioc container,配置和Java对象的生命周期管理。

* aop:

Spring AOP(面向方面编程)框架，用于在模块化方面的横切关注点。简单得说，它只是一个拦截器拦截一些过程，
例如，当一个方法执行，Spring AOP 可以劫持一个执行的方法，在方法执行之前或之后添加额外的功能。
在Spring AOP中，有 4 种类型通知(advices)的支持：			
通知(Advice)之前 - 该方法执行前运行		
通知(Advice)返回之后 – 运行后，该方法返回一个结果
通知(Advice)抛出之后 – 运行方法抛出异常后，		
环绕通知 – 环绕方法执行运行，结合以上这三个通知。

* dao:

用程序设计的语言来说，就是建立一个接口，接口中定义了此应用程序中将会用到的所有事务方法。在这个应用程序中，当需要和数据源进行交互的时候则使用这个接口，并且编写一个单独的类来实现这个接口在逻辑上对应这个特定的数据存储。

* orm:(habinate)

ORM的全称是Object Relational Mapping，即对象关系映射。它的实现思想就是将关系数据库中表的数据映射成为对象，以对象的形式展现，这样开发人员就可以把对数据库的操作转化为对这些对象的操作。因此它的目的是为了方便开发人员以面向对象的思想来实现对数据库的操作。

web

**spring的自动装配**

spring的ioc容器实现了对象的依赖注入，将注入的对象通过xml文件配置。注入的对象的实现实例，由多种方式决定。包括默认的none，需要显示设置；name装配；type装配；构造函数；自动检测；

**CGLIB代理**

**事务**

定义事件的开始 - 事件处理过程 - 事件提交 - 事件回滚

这样代码在AOP的倡导者看来是“肮脏”的代码。他们认为，所有的与事务有关的方法都应当可以集中配置（见声明性事务控制），并自动拦截，程序应当关心他们的主要任务，即商业逻辑，而不应和事务处理的代码搅和在一起。


**aop的缓存配置**

**ORM的缺点**

但是ORM和DAO产生的缺点是：

* 从系统结构上来看,采用ORM的系统一般都是多层系统，系统的层次多了，效率就会降低。
* 如果用上了ORM,程序员很有可能将全部的数据提取到内存对象中，然后再进行过滤和加工处理，这样就容易产生性能问题。
* 在对对象做持久化时，ORM一般会持久化所有的属性，有时，这是不希望的。
* 但ORM是一种工具，工具确实能解决一些重复，简单的劳动但我们不能指望工具能一劳永逸的解决所有问题，有

**ApplicationContext**

提供应用级别的全局配置。


## JDBC

[三层架构](https://wenku.baidu.com/view/1d1c7875a31614791711cc7931b765ce05087ad8.html)

JDBC提供了数据库访问的api，提供多种数据库访问的统一访问。

三层框架：
通常意义上的三层架构就是将整个业务应用划分为：表现层（UI）、业务逻辑层（BLL）、
数据访问层（DAL）。区分层次的目的即为了“高内聚，低耦合”的思想。

原理：
* 数据访问层：主要是对原始数据（数据库或者文本文件等存放数据的形式）的操作层，而不是指原始数据，也就是说，
是对数据的操作，而不是数据库，具体为业务逻辑层或表示层提供数据服务．
* 业务逻辑层：主要是针对具体的问题的操作，也可以理解成对数据层的操作，对数据业务逻辑处理，如果说数据层是积木，那逻辑层就是对这些积木的搭建。
* 表示层：主要表示用户的操作终端，如果逻辑层相当强大和完善，无论表现层如何定义和更改，逻辑层都能完善地提供服务。

* Spring 通过提供ORM模块，支持我们在直接JDBC之上使用一个对象/关系映射映射(ORM)工具，Spring 支持集成主流的ORM框架，如Hiberate,JDO和 iBATIS SQL Maps。Spring的事务管理同样支持以上所有ORM框架及JDBC。

* 你两种依赖方式都可以使用，构造器注入和Setter方法注入。最好的解决方案是用构造器参数实现强制依赖，setter方法实现可选依赖。

* 你怎样定义类的作用域?

当定义一个<bean> 在Spring里，我们还能给这个bean声明一个作用域。它可以通过bean 定义中的scope属性来定义。如，当Spring要在需要的时候每次生产一个新的bean实例，bean的scope属性被指定为prototype。另一方面，一个bean每次使用的时候必须返回同一个实例，这个bean的scope 属性 必须设为 singleton。

**解释Spring支持的几种bean的作用域**

* singleton : bean在每个Spring ioc 容器中只有一个实例。
* prototype：一个bean的定义可以有多个实例。
* request：每次http请求都会创建一个bean，该作用域仅在基于web的Spring ApplicationContext情形下有效。
* session：在一个HTTP Session中，一个bean定义对应一个实例。该作用域仅在基于web的Spring ApplicationContext情形下有效。
* global-session：在一个全局的HTTP Session中，一个bean定义对应一个实例。该作用域仅在基于web的Spring ApplicationContext情形下有效。
* 缺省的Spring bean 的作用域是Singleton.

**Spring框架中的单例bean不是线程安全的**


**spring bean的完整生命周期**

[链接](https://www.cnblogs.com/jasonboren/p/10660937.html)

