---
layout: default-layout
needAutoGenerateSidebar: true
title: Dynamic Web TWAIN SDK Remote Scan API Reference - Global APIs
keywords: Dynamic Web TWAIN, Documentation, Remote Scan, API Reference, Global APIs
breadcrumbText: Global
description: Dynamic Web TWAIN SDK Remote Scan Documentation API Reference Global APIs Page
permalink: /api/Dynamsoft_DWT.html
---

# `Dynamsoft.DWT`
> The following global properties and functions apply to Remote Scan  only. 
> The full properties and functions can be found <a href="https://www.dynamsoft.com/web-twain/docs/info/api/Dynamsoft_WebTwainEnv.html" target="_blank">here</a>. 

## CreateRemoteScanObjectAsync

Based on serviceInfo, return the existing object if already exists, otherwise, create a new one.

**Syntax**

```typescript
CreateRemoteScanObjectAsync(serverUrl: string): Promise<RemoteScanObject>;
```

**Parameters**

`serverUrl`: The URL of the proxy server: https(http)://domain_name:port (default port: https-18603, http-18602). The domain you bind in the <a href="https://www.dynamsoft.com/customer/account/certificate?ip=" target="_blank">customer protal</a>.




