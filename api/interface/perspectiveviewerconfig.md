---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface PerspectiveViewerConfig
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface PerspectiveViewerConfig
breadcrumbText: Interface PerspectiveViewerConfig
description: Dynamsoft Document Viewer Documentation API Reference Interface PerspectiveViewerConfig Page
permalink: /api/interface/perspectiveviewerconfig.html
---

# PerspectiveViewerConfig

## Syntax

```typescript
interface PerspectiveViewerConfig {
	canvasStyle?: CanvasStyle;
	pageStyle?: BaseStyle;
	quadSelectionStyle?: QuadSelectionStyle;    
	enableSlide?: boolean; 
}
```

## Attributes

### canvasStyle

The style of canvas of the viewer. Please refer to [`CanvasStyle`]({{ site.api }}interface/styleinterface/canvasstyle.html).

### pageStyle

The style of displayed page in the viewer. Please refer to [`BaseStyle`]({{ site.api }}interface/styleinterface/basestyle.html).

### quadSelectionStyle

The style of quadrilateral selection. Please refer to [`QuadSelectionStyle`]({{ site.api }}interface/styleinterface/quadselectionstyle.html).

### enableSlide

Specify whether allow to slide the pages.


## Related

- [`PerspectiveViewerConstructorOptions`]({{ site.api }}interface/perspectiveviewerconstructoroptions.html)