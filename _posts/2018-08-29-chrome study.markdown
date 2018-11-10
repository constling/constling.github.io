---
layout: post
title:  "chrome study"
date:   2018-08-29 13:56:00
categories: update
---

[google code search](https://cs.chromium.org/)

constlingxing@gmail.com

gclient update --force --with_branch_heads

gclient runhooks:下载工具

https://dev.chromium.org/developers/how-tos/depottools

v8快照
https://zhuanlan.zhihu.com/p/32249462

资源加载

https://www.chromium.org/developers/design-documents/multi-process-resource-loading

multy-process
http://dev.chromium.org/developers/design-documents/multi-process-architecture

https://blog.csdn.net/namelcx/article/details/8820460
http://dev.chromium.org/developers/design-documents/displaying-a-web-page-in-chrome

插件架构
https://www.chromium.org/developers/design-documents/plugin-architecture

shell.h
WebContents
RenderProcessHost
browser_main_loop
browsing_instance.h
ipc_channel_proxy
WebContentsImpl
BrowserContext

aef
shell.cc 293 web_contents_impl.cc
RenderViewHostImpl


AefRenderMainImpl:render主入口
RenderViewImpl:渲染页面？

chrome构建dom树
https://zhuanlan.zhihu.com/p/24911872

创建render进程过程

site_instance_impl.cc 120
Shell::LOadURLForFrame->NavigationControllerImpl::LoadURLWithParams(LoadEntry\NavigateToPendingEntry\)->
NavigatorImpl::NavigateToPendingEntry->RenderFrameHostManager::InitRenderView->render_process_host_impl.cc（真实进程）

点击事件到重新渲染

A SiteInstance represents a group of web pages that must live in the same
// renderer process


执行流程：
webcontrol::notifyMOveorresize->internalshell::notifymoveorresize->shell::notifymovexx->
renderviewhostimpl:notifymoxxx->renderviewhostimpl:send->renderwidgethostimpl:send->RenderProcessHostImpl:send-

发送到:RenderViewImpl::OnMessageReceived


chrome深度理解

https://github.com/liangklfangl/react-article-bucket/blob/master/chrome-core/webCore/webkit-render-process.md

性能数据相关：

telemetry使用

[about:tracing使用](http://gclxry.com/%E4%BD%BF%E7%94%A8chrometracing%E5%B7%A5%E5%85%B7%E6%9D%A5%E6%9F%A5%E7%9C%8Bchrome%E5%86%85%E5%AD%98%E5%92%8Ccpu%E4%BD%BF%E7%94%A8%E7%8A%B6%E5%86%B5/)


webKit包括：javascript core、web core


browser : 程序后台。负责所有 I/O 操作，及与子进程的通信。它跟 renderer 通信来管理 网页。
common : 由 content 模块中不同进程共享的文件(browser, renderer, plugin 等)。
gpu : GPU 进程的代码，用于 3D 合成和 3D API。
plugin : 用于在其他进程中运行插件的代码。
ppapi_plugin : Pepper 插件进程的代码。
renderer : 每个 tab 子进程的代码。它内嵌了 WebKit, 并通过 browser 进行 I/O 操作。
utility : 沙箱进程中执行随机操作所需要的代码。当 browser 进程需要对不受信任的数据做操作时，会调用它。
worker ： 运行 HTML5 Web Worker 的代码。


性能评估
https://blog.csdn.net/huangjin0507/article/details/51878559

http://gclxry.com/category/chromium-dev/
