---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface CaptureViewerConstructorOptions
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface CaptureViewerConstructorOptions
breadcrumbText: Interface CaptureViewerConstructorOptions
description: Dynamsoft Document Viewer Documentation API Reference Interface CaptureViewerConstructorOptions Page
permalink: /api/interface/captureviewerconstructoroptions.html
---

# CaptureViewerConstructorOptions

## Syntax

```typescript
interface CaptureViewerConstructorOptions {
	container?: string | HTMLElement;
	viewerConfig?: EditViewerConfig;
	uiConfig?: UiConfig;
	groupUid?: string; //The uid of viewer's group, if it is not set, a random groupUid will generate.
}
```

## Attributes

- `container`: The container which is used to show the viewer. Its `id` or `HTMLElement` is acceppted.

- `viewerConfig`: The configurations of viewer, please refer to [`CaptureViewerConfig`]({{ site.api }}interface/editviewerconfig.html). If it is not specified, the [default configuration]({{ site.viewer }}viewerconfig.html#captureviewerconfig) will be applied.

- `uiConfig`: The UI layout configurations of viewer, please refer to [`UiConfig`]({{ site.api }}interface/uiconfig.html). If it is not specified, the [default UI]({{ site.ui }}default_ui.html#capture-viewer) will be applied.

- `groupUid`: The uid of viewers' group. Please refer to [Data synchronisation between viewers](). If it is not specified, a random groupUid will be generated.