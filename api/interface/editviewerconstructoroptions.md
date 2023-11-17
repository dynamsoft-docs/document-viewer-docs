---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface EditViewerConstructorOptions
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface EditViewerConstructorOptions
breadcrumbText: Interface EditViewerConstructorOptions
description: Dynamsoft Document Viewer Documentation API Reference Interface EditViewerConstructorOptions Page
permalink: /api/interface/editviewerconstructoroptions.html
---

# EditViewerConstructorOptions

## Syntax

```typescript
interface EditViewerConstructorOptions {
	container?: string | HTMLElement;
	viewerConfig?: EditViewerConfig; // The configurations of viewer, such as page style, minZoom, maxZoom and so on.
	uiConfig?: UiConfig; // The UI layout configurations.
    thumbnailConfig?: ThumbnailConfig; // The thumbnail configurations.
	groupUid?: string; //The uid of viewer's group, if it is not set, a random groupUid will generate.
}
```

## Attributes

- `container`: The container which is used to show the viewer.

- `viewerConfig`: The configurations of viewer, please refer to [`EditViewerConfig`](). If it is not specified, the [default configuration]({{ site.viewer }}viewerconfig.html#editviewerconfig) will be applied.

- `uiConfig`: The UI layout configurations of viewer, please refer to [`UiConfig`](). If it is not specified, the [default UI]({{ site.ui }}default_ui.html#edit-viewer) will be applied.

- `thumbnailConfig`: The configurations of integrated thumbnail, please refer to [`ThumbnailConfig`](). If it is not specified, the [default configuration]({{ site.viewer }}viewerconfig.html#thumbnailconfig) will be applied.

- `groupUid`: The uid of viewers' group. Please refer to [Data synchronisation between viewers](). If it is not specified, a random groupUid will be generated.