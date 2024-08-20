---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface Configuration
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface Configuration
breadcrumbText: Interface Configuration
description: Dynamsoft Document Viewer Documentation API Reference Interface Configuration Page
permalink: /api/interface/configuration-v1.0.0.html
---

# Configuration

## Syntax

```typescript
interface Configuration {
    license: string; 
    engineResourcePath: string; 
    deviceFriendlyName?: string; 
}
```

## Attributes

### license

Specify the license string.

### engineResourcePath

Specify the path should lead to a folder containing the distributed WASM files.

If set to `""`, the library will try to find the engine in the same location as the main JavaScript file.

### deviceFriendlyName

Specify a human-readable name for the device which corresponds to its UUID. This name will appear in the device details table when you check the statistics of the according license. Default value is `""`.

## Related

- [`setConfig()`]({{ site.api }}namespace/ddv.html#static-setconfig)
