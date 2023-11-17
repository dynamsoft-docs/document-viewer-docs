---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface VideoConfig
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface VideoConfig
breadcrumbText: Interface VideoConfig
description: Dynamsoft Document Viewer Documentation API Reference Interface VideoConfig Page
permalink: /api/interface/videoconfig.html
---

# VideoConfig

## Syntax

```typescript
interface videoConfig {
    resolution?: [number, number]; // The resolution of the camera video input. If the specified resolution is not exactly supported, the closest resolution will be applied.
    fill?: boolean; // Whether the video stream fills the viewer.
}
```