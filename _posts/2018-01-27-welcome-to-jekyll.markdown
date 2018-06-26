---
layout: post
title:  "welcome to constling博客"
date:   2018-01-27 11:23:32
categories: update
---
翻译作者：Sébastien Fourault

原文： 《The Ultimate Guide To Designing A Chatbot Tech Stack》

###设计聊天机器人技术栈的终极攻略

<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/1e87ed866504aeedd653ba2ede114818.png" width="75%" height="75%"/>

如果你正在在一家聊天机器人公司工作（咨询，开发，UX 设计……），这段对话可能听起来很熟悉：

**客户：「助力我的机器人最佳技术的是什么？」**

我：「不仅仅是一项技术，而是一系列的多种技术。每项技术都可以解决一个问题，所以这取决于你的项目。」

**客户：「好吧，那你能给我什么建议吗？」**

我：「你知道吗，要回答这个问题，我差不多需要问你将近 10 个聊天机器人问题！」

在这篇文章中，我会详细讲述我自己**为客户设计高效聊天机器人的技术栈框架**。

###聊天机器人目前景象一片混乱……讲真

<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/d31edac7c53791d11994c13e548abcff.png" width="75%" height="50%"/>

正如你所看到的，有太多作者在做太多的东西。所以，该为聊天机器人付多少钱算是一个合理的价格，对于客户来说还是很难去意识到的。

结果：在某些领域聊天机器人的项目价格在 5 千美金到 50 万美金之间。（关键是有时机器人的质量都是相同的。简直是什么鬼？！）

每一个技术开发者都争着提出「聊天机器人解决方案」，即使对于技术人群来说，也很难去区分平台、框架、NLP 技术、消息功能、免代码机器人……

###如何选择正确的技术栈
####创新的游戏规则
在设计一个机器人时，记住三个创新的核心维度：你的产品必须 desirable、viable、feasible。

<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/a30af40d647fd38aba5c2782a8362ce5.png" width="50%" height="50%"/>

这三个标准应该在你选择一项技术时作为引导你的基准：它是否对用户友好？它是否拥有你全部想要的功能？价格是多少？……
###选择技术是一个机器人项目的第三步
**定义客户正确的使用场景与适用范围：某些情况下项目在技术上不可行、没什么用甚至太昂贵。从小做起，扩大规模，在这个想法上不要犹豫

1. 设计对话流程（你可以使用 RealtimeBoard 这样一款超棒的协作脑图工具，或者 BotMock 也可以）
2. 设计对话流程（你可以使用 RealtimeBoard 这样一款超棒的协作脑图工具，或者 BotMock 也可以）
3. 选择最合适的技术栈
4. 使用迭代、beta用户测试来敏捷开发方法论，提升机器人流程，知识库，机器人个性……
5. 扩大规模，遵循分析结果/KPI 并与你想实现的目标进行比较

在第一、二步中，你应该汇集所有你需要的信息以选择最佳技术。

- 首先，确保你的用户可以理解选择正确技术的利益
- 然后，询问正确的问题来做最明智的决定

###怎样解释技术助力聊天机器人？
<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/7bba3fe04af950bf29881fa7714506f9.png" width="75%" height="50%"/>

- 用户通过设备在消息平台上进行交互，她的的消息会通过 NLP 进行处理。
- 然后机器人可以启动一个过程，用来自数据库 / API 的实时信息来回应，或者转交人工。
- 接收的消息越多，机器人提升的也就越多：这也就是所谓的机器学习。某些情况下也需要人工来帮助机器人，也就是所谓的监督学习。

我所讲的都是非常基础的，但是可以很有效地向非技术人员证明机器人背后的关键概念 / 技术:)

###聊天机器人十大重要问题
<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/2d212136750ce3a6c7575181be6a7174.png" width="50%" height="50%"/>

以下是我认为任何机器人创建者在选择技术方案强化他的机器人前都需要抓住的 10 个主题。
####消息接口
<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/f3c8e04c0d167f7736c70aae7437841e.png" width="75%" height="50%"/>

你专注于哪个消息平台？你的用户们都在哪儿？你的服务是对任何人都适用还是只对特定的一组用户群？他们会使用什么设备聊天？（智能手机、笔记本电脑、语音……）

- FacebookMessenger、Kik、Telegram、Allo、Line、Viber…都适用于移动应用，并且在你想快速快速大量用户的情况下（12 亿的潜在用户）
- 微信，如果你定位于亚洲用户的话，微信是主要的平台
- Slack、BearyChat 对初创公司与开发者来说会是个不错的选择（尤其还是 ChatOps 应用）
- Skype 与 Microsoft Teams 更面向企业的应用：针对大公司雇员的聊天机器人，具有高度数据隐私问题
- Whatsapp 目前不支持机器人，但是有流言说他们马上就会在平台上邀请企业
- Twilio 允许你发送短信，是针对于那些没有智能手机的用户，或者不确定他们倾向于使用哪个消息平台
- iMessenger，如果你用户中的大多数有 iPhone
- 简单的网页小部件，如果你打算将你的机器人集成进网站
- Twitter 基于 twitter 的社区直达消息/微博，或者公开分享性的会话
- Amazon Echo、 Google Assistant 或者 MS Cortana，如果你想用语音替代消息（相对于聊天机器人我更原因称它们为语音机器人）

####图标机器人流程建立
<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/d430feee3f19be7017ff9d5287e5906e.jpg" width="50%" height="50%"/>

- 包括编码与配置技术工具此类的进阶技术会更具效力。
- 免代码技术可以使任何人通过拖拽与施放来修改机器人图标界面，少一些定制。这里值得提及的是Chatfuel、Converse.ai、Motion.ai、Smartly.ai、FlowXO、Octane.ai、Sequel、Gupshup ……

关键问题是：你是否需要非技术人群能够实时修改机器人内容？如果内容经常变化并且你想给业务人群自主权，那么就可以考虑使用图形界面的解决方案。

####会话流
你的机器人只是一个基础的 QA 机器人还是它运作起来像一个真人一样？（发送多个消息，提供选项……）

<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/65a27391383cb33fba9d9dbc1a2304de.png" width="50%" height="50%"/>

有很多解决方案是建立于问答基础之上，像是来自微软的 QNAmaker，由 Intercom 制造的 Operator……所以没有必要构建太复杂的东西。

如果你需要一个有互动性的 FAQ，那么只需要使用那些简单的工具，在几分钟之内就可以做好。

####丰富且有互动的内容

<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/c5d5681458e4bac046e7484d87113998.png" width="50%" height="50%"/>

**你的机器人只使用文本，还是你希望使用不同类型的消息？**（图片，按钮，快速回复，列表，模版……）

在某些特定的使用场景中，你只能够使用文本，尤其是你的目标是短信频道（老人、厌恶数据的部分人群、没有智能手机的发展中国家……）。或者，当你计划将机器人接入多个提供不同模版结构的消息平台。

####NLP（自然语言处理）
你真的需要 NLP 吗？！

我经常听人们谈起他们是如何需要他们的机器人变得超级智能，充满 AI，近乎于人类。

事实上，大多数使用场景根本就不需要 NLP，因为他们只是遵循一个简单流程图而已！

举个例子，聊天机器人可以让你浏览产品目录，并最终告诉你商店的营业时间，这并不需要一个复杂的 NLP 解决方案，而完全可以通过按钮、快捷回复以及一个好的菜单来实现。

<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/6c108be9a9d235fb63fb8e82832bec3d.png" width="50%" height="50%"/>

不过如果你意向去建立一个真实的会话感受，你是绝对需要 NLP 的！现如今共有 6 大 NLP 平台，分别由 Facebook、IBM、Google、NuanceGroup 以及 Miscrosoft 所拥有。我外加一个，Recast，一个法国的创业公司，可以提供 NLP 的协作方法。

做完基础安利后，我要说一下我的最爱，API.Ai。足够简单，可以让你将回答放在平台上，并支持小的讨论功能，监督学习，多种语言……但是毕竟只是我个人的最爱，仅供参考:)

####监督学习

<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/3facebb6a746b8019f6b229a492b382b.png" width="50%" height="50%"/>

聊天机器人脱离了人类团队什么都不是。我们要给聊天机器人提升会话流程，添加新的意图，丰富知识库……这就是所说的监督学习或者监督训练。监督学习可以在线上进行，也可以在在会话之后。我们可以观察不同的实践：

- 在线指导：当机器人不能足够确认信息或者不能识别任何意图时，这时候就需要人来帮助它规范正确意图。
- 日常训练：每天操作员会审视所有对话，并确认或否定机器人所认知的意图。
- 周常改进：每周，团队汇集可以添加的有趣的新功能。聆听并观察你的用户，他们会有你需要去适应的意外举动。

####人工转接

<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/569ac7ea0c1f445be0aa55d42e16d2a1.jpg" width="50%" height="50%"/>

**你能准备出真人来接管会话吗？**（当机器人不理解时，或者当用户想要人工服务的时候）在很多场景中，这真的会让自动化聊天机器人变成顾客的惊奇体验。

再强调一遍，如果你计划将人工集成进这一循环，请确保使用了合适的技术解决方案。举个例子：

- Facebook messenger 可以让你看见在页面管理器中看见所有会话。他们最近宣布了为开发者的转化协议
- Operator，来自 Intercom 的 Operator 似乎被设计成可以让人工插入会话
- Chatfuel 提供按钮来看使「在线聊天会议」
- Dashbot 有人工转接功能

####API 集成

<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/fcea562af107192e0792da3ecd99af4d.png" width="50%" height="50%"/>

如果你需要通过网络服务集成第三方，请确保你的技术栈可以支持它。举个例子，Chatfuel 能够让你关联到 Zappier，但是大多数 WYSIWYG 平台不能连接外部网络服务。最灵活的方法是自己编写机器人的逻辑以及使用 REST API。

####语言支持

<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/1fb63f501d1a5e2a9054a678d66de1f3.png" width="50%" height="50%"/>

根据于你的目标用户，语言标准会是决定性的因素。大多数平台都能很好地支持英语，然而它们并不都支持其他语言。有时语言虽然有支持，但是效果也没有预期那样好。为了做出选择，你可以在这篇文章中找到一张对比表。

####估价

<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/19547881a4197027f0cf184eace55cca.png" width="50%" height="50%"/>

当然，你需要考虑一下所有软件解决方案的价格以及估算你的用户增长。在这篇文章中你可以找到价格表。模式大多例如：

- 免费模式（有或者没有水印）

- 免费增值模式（ X 条消息 / X 个用户前免费或为进阶功能付费）

- 为每条消息/每个 API 请求付费

- 按平台上用户数付费

- 订阅

###我最喜欢的堆栈？
这个……这个问题才对嘛！你应该现在有能力去决定哪个堆栈可以提供给你的客户，并在时间推移上有个价值上的估算了:)

<img src="http://ata2-img.cn-hangzhou.img-pub.aliyun-inc.com/c992104924d39335722caf5a8b95f938.png" width="50%" height="50%"/>

目前我喜欢的堆栈是：

- 用 API.ai 做 NLP 与监督学习：很不错的讨论小功能，支持法语的最佳平台，漂亮的界面……

- 用 Dashbot 做分析以及人工转接：十分详细的统计，易于集成，报表功能……

- 用 Botpress 做 NodeJS 框架：可以迅速搭建并且十分灵活

- 用 FacebookMessenger 做消息接口：12 亿的用户，绝佳的聊天 UX

- 用 Airtable 做数据库：可以由非技术人群更新（有需要的话有时可以用 MongoDB）

- 还有其他一些取决于项目类型的 API（Spotify、Youtube、 Google Maps……)

希望本文可以帮助到你们一些人，感谢阅读:)
