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
    currentPageStyle?: BaseStyle;
    quadSelectionStyle?: QuadSelectionStyle;
    enableSlide?: boolean; 
    scrollToLatest?: boolean; 
    scrollDirection?: string; 
    minZoom?: number; 
    maxZoom?: number;
}
```

## Attributes

### canvasStyle

The style of canvas of the viewer. Please refer to [`CanvasStyle`]({{ site.api }}interface/styleinterface/canvasstyle.html).

### pageStyle

The style of displayed page in the viewer. Please refer to [`BaseStyle`]({{ site.api }}interface/styleinterface/basestyle.html).

### currentPageStyle

The style of current page in the viewer. Please refer to [`BaseStyle`]({{ site.api }}interface/styleinterface/basestyle.html).

### quadSelectionStyle

The style of rectangular selection. Please refer to [`QuadSelectionStyle`]({{ site.api }}interface/styleinterface/quadselectionstyle.html).

### enableSlide

Specify whether allow to slide the pages.

Default value: `true`

### scrollToLatest

Specify whether to scroll to latest page automatically when importing new pages.

Default value: `false`

### scrollDirection

Specify the scroll direction, supported values are `vertical`, `horizontal`.

Default value: `vertical`

### minZoom

The mininum zoom ratio in the viewer. The value range is [0.01, 64]. 

Default value: 0.01

Please notice `minZoom` cannot be larger than `maxZoom`.

### maxZoom

The maxinum zoom ratio in the viewer. The value range is [0.01, 64]. 

Default value: 64

Please notice `maxZoom` cannot be smaller than `minZoom`.

## Related

- [`EditViewerConstructorOptions`]({{ site.api }}interface/editviewerconstructoroptions.html)
