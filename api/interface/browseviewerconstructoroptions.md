---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface BrowseViewerConstructorOptions
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface BrowseViewerConstructorOptions
breadcrumbText: Interface BrowseViewerConstructorOptions
description: Dynamsoft Document Viewer Documentation API Reference Interface BrowseViewerConstructorOptions Page
permalink: /api/interface/browseviewerconstructoroptions.html
---

# BrowseViewerConstructorOptions

## Syntax

```typescript
interface BrowseViewerConstructorOptions {
	container?: string | HTMLElement;
	viewerConfig?: BrowseViewerConfig; // The configurations of viewer, such as page style, minZoom, maxZoom and so on.
	uiConfig?: UiConfig; // The UI layout configurations.
	groupUid?: string; //The uid of viewer's group, if it is not set, a random groupUid will generate.
}
```

## Attributes

- `container`: The container which is used to show the viewer. Its `id` or `HTMLElement` is acceppted.

- `viewerConfig`: The configurations of viewer, please refer to [`BrowseViewerConfig`]({{ site.api }}interface/browseviewerconfig.html). If it is not specified, the [default configuration]({{ site.viewer }}viewerconfig.html#browseviewerconfig) will be applied.

- `uiConfig`: The UI layout configurations of viewer, please refer to [`UiConfig`]({{ site.api }}interface/uiconfig.html). If it is not specified, the [default UI]({{ site.ui }}default_ui.html#browse-viewer) will be applied.

- `groupUid`: The uid of viewers' group. Please refer to [Data synchronisation between viewers](). If it is not specified, a random groupUid will be generated.