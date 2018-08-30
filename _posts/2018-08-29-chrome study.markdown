---
layout: post
title:  "chrome study"
date:   2018-08-29 13:56:00
categories: update
---

constlingxing@gmail.com

gclient update --force --with_branch_heads

gclient runhooks:下载工具

https://dev.chromium.org/developers/how-tos/depottools

资源加载

https://www.chromium.org/developers/design-documents/multi-process-resource-loading

multy-process
http://dev.chromium.org/developers/design-documents/multi-process-architecture

https://blog.csdn.net/namelcx/article/details/8820460
http://dev.chromium.org/developers/design-documents/displaying-a-web-page-in-chrome



shell.h
WebContents
RenderProcessHost
browser_main_loop
browsing_instance.h
ipc_channel_proxy
WebContentsImpl
BrowserContext
RenderViewHostImpl


AefRenderMainImpl:render主入口
RenderViewImpl:渲染页面？

chrome构建dom树
https://zhuanlan.zhihu.com/p/24911872

创建render进程过程

Shell::LOadURLForFrame->NavigationControllerImpl::LoadURLWithParams(LoadEntry\NavigateToPendingEntry\)->
NavigatorImpl::NavigateToPendingEntry->RenderFrameHostManager::InitRenderView->render_process_host_impl.cc

点击事件到重新渲染

A SiteInstance represents a group of web pages that must live in the same
// renderer process


执行流程：
webcontrol::notifyMOveorresize->internalshell::notifymoveorresize->shell::notifymovexx->
renderviewhostimpl:notifymoxxx->renderviewhostimpl:send->renderwidgethostimpl:send->RenderProcessHostImpl:send-

发送到:RenderViewImpl::OnMessageReceived