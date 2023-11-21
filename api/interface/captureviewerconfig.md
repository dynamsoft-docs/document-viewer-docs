---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface CaptureViewerConfig
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface CaptureViewerConfig
breadcrumbText: Interface CaptureViewerConfig
description: Dynamsoft Document Viewer Documentation API Reference Interface CaptureViewerConfig Page
permalink: /api/interface/captureviewerconfig.html
---

# CaptureViewerConfig

## Syntax

```typescript
interface CaptureViewerConfig {
    canvasStyle?: CanvasStyle;
	quadSelectionStyle?: QuadSelectionStyle;
	enableTorch?: boolean; // default: false
	enableAutoCapture?: boolean; // default: false
	enableAutoDetect?: boolean; // default: false
	acceptedPolygonConfidence?: number; // deafault: 80
	maxFrameNumber?: number; // default: 10
}
```

## Attributes

### canvasStyle

The style of canvas of the viewer. Please refer to [`CanvasStyle`]({{ site.api }}interface/styleinterface/canvasstyle.html).

### quadSelectionStyle

The style of rectangular selection. Please refer to [`QuadSelectionStyle`]({{ site.api }}interface/styleinterface/quadselectionstyle.html).

### enableTorch

Specify whether to turn on the flashlight.

### enableAutoCapture

Specify whether to enable automatic capture. 

### enableAutoDetect

Specify whether to enable automatic border detection in video stream.

### acceptedPolygonConfidence

Specify the threshold confidence level when detecting boundaries.

### maxFrameNumber

Specify the maximum number of frames detected per second.

## Related

- [`CaptureViewerConstructorOptions`]({{ site.api }}interface/captureviewerconstructoroptions.html)