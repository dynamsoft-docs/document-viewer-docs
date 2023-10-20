---
layout: default-layout
title: Getting Started - Remote Scan
description: This is the main page of Getting Started. 
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---

# Requirement

To support Remote Scan, as a developer, firstly you need to install Dynamic Web TWAIN, and then need the following components or configurations.


1. Install v18.x Dynamsoft Service (If you have already installed <a href="https://www.dynamsoft.com/web-twain/downloads/" target="_blank">Dynamic Web TWAIN v18.x SDK</a>, you don't need to install Dynamsoft Service manually). 
2. <a href="{{site.video}}" target="_blank">Watch the instructional video (Optional)</a>
3. <a href="{{site.bonjour}}" target="_blank">Enable and configure Bonjour Service</a>
4. <a href="{{site.proxy}}" target="_blank">Configure Proxy Service </a>
5. <a href="{{site.build}}" target="_blank">Build a Remote Scan page</a>

<!--
| Requirement | To Do |
|:-|:-|
| Dynamic Web TWAIN v18.0 SDK| Install <a href="https://www.dynamsoft.com/web-twain/downloads/" target="_blank">Dynamic Web TWAIN v18.0 SDK</a>|
| Dynamsoft Service | Install Dynamsoft Service<br> Enable and configure Bonjour Service   |
| Dynamsoft Proxy Service | Configure Proxy Service  |
| Remote Scan API | Build a Remote Scan page | -->


## Dynamsoft Service

* Provide network access, scanner access, and Buffer, IO and other operations.

* Manage Bonjour Service and Proxy Service. Discover Dynamsoft Services with Bonjour Service enabled on an Intranet.

    * Bonjour Service
        * Register Dynamsoft Service as a Bonjour Service to make it discoverable on an Intranet. 

        * Firewall exceptions need to be added to ensure that the specified ports are accessible. On Windows, they are added 
        automatically. On macOS and Linux, administrators need to set them up manually.

       <!-- * Configure whether the scanners or local files can be accessed by the Proxy Service. -->

## Proxy Service

* Access the scanners under the corresponding Dynamsoft Service (with Bonjour Service enabled) through Nginx Reverse Proxy.

* Automatically find the Bonjour Service and eSCL scanners on an Intranet every 60 seconds, and then update the proxy.conf file (under C:\Windows\SysWOW64\Dynamsoft\DynamsoftServicex64_18\proxy\conf). The forceRefresh parameter in <a href="{{site.api}}RemoteScanObject.html#getdynamsoftservice" target="_blank">getDynamsoftService</a> can forcibly refresh all Dynamsoft Service or eSCL scanners on an Intranet.


