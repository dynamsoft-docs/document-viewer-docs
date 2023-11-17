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