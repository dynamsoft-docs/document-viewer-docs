---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface EditViewerConfig
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface EditViewerConfig
breadcrumbText: Interface EditViewerConfig
description: Dynamsoft Document Viewer Documentation API Reference Interface EditViewerConfig Page
permalink: /api/interface/editviewerconfig.html
---

# EditViewerConfig

## Syntax

```typescript
interface EditViewerConfig {
    canvasStyle?: CanvasStyle;
    pageStyle?: BaseStyle;
    quadSelectionStyle?: QuadSelectionStyle;
    enableSlide?: boolean; // Whether allow to slide the pages, default: true
    scrollToLatest?: boolean; // Auto set the latest loaded page as the current page, default: false
    scrollDirection?: string; // The scroll direction, supports "horizontal", "vertical", default: "vertical"
    minZoom?: number; // minvalue&default: 0.01
    maxZoom?: number; // maxvalue&default: 128
}
```