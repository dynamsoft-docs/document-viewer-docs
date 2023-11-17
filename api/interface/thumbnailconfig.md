---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface ThumbnailConfig
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface ThumbnailConfig
breadcrumbText: Interface ThumbnailConfig
description: Dynamsoft Document Viewer Documentation API Reference Interface ThumbnailConfig Page
permalink: /api/interface/thumbnailconfig.html
---

# ThumbnailConfig

## Syntax

```typescript
interface ThumbnailConfig extends BrowseViewerConfig {
    position?: string; // The position of the thumbnail view box displayed on the main viewer, supports "left", "right", "top", "bottom"
    size?: string; // The width or height of thumbnail, supports "px", "%"
    visibility?: string; // Whether show this thumbnail when the edit viewer is created and shown, supports "hidden", "visible"
}
```