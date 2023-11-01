---
layout: default-layout
needAutoGenerateSidebar: true
noTitleIndex: true
title: Dynamsoft Document Viewer User Interface - Viewer Config
keywords: Documentation, Dynamsoft Document Viewer, Viewer, Viewer Config
breadcrumbText: UiConfig
description: Dynamsoft Document Viewer Documentation Viewer Config part
permalink: /viewer/viewerconfig.html
---

# Viewer Config

The viewer configurations and styles are configured by `viewerConfig` when creating the viewer.

## Structure

Each viewer class has its own `viewerConfig` structure. Please refer to the links below and check the details.

- `EditViewerConfig`
    - `ThumbnailConfig`
- `CaptureViewerConfig`
- `PerspectiveViewerConfig`
- `BrowseViewerConfig`

> `CustomViewer` does not have `viewerConfig`.

<!-- Take `EditViewerConfig` as example, we can configure some styles of the viewer and configurations of the viewer.

```typescript
interface EditViewerConfig {
    canvasStyle?: CanvasStyle;
    pageStyle?: BaseStyle;
    quadSelectionStyle?: QuadSelectionStyle;
    enableSlide?: boolean; 
    scrollToLatest?: boolean; 
    scrollDirection?: string; 
    minZoom?: number; 
    maxZoom?: number; 
}
``` -->

## Default viewerConfig

DDV will provide the default viewerConfig for each viewer, developers can customize it to achieve their own requirement. Please refer to How to customize.

<div class="multi-panel-switching-prefix"></div>

- [Edit viewer](#editviewerconfig)
- [Thumbnail](#)
- [Capture viewer](#capture-viewer)
- [Perspective viewer](#perspective-viewer)
- [Browse viewer](#browse-viewer)

<div class="multi-panel-start"></div>

### EditViewerConfig

```typescript
{
    canvasStyle: {
        background: "#e2e1de",
        cursor: "default",
    },
    pageStyle: {
        border: "1px solid #707070",
        background: "#fff",
    },
    quadSelectionStyle: {
        // Style of the selection lines & background
        border: "2px solid #fe8e14",
        background: "rgba(255,255,255,0)",
        // Style of the selection control points
        ctrlBorderRadius: "50%",
        ctrlBackground: "#fe8e14",
        ctrlBorder: "2px solid #fe8e14",
        ctrlWidth: "10px",
        ctrlHeight: "10px",
        // Style when selection is invalid
        invalidCtrlBorderColor: "red",
        invalidBorderColor: "red",
    },
    enableSlide: true,
    scrollToLatest: false,
    scrollDirection: "vertical",
    minZoom: 0.01,
    maxZoom: 128,
};
```

### 

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

### ThumbnailConfig

#### Mobile

```typescript
{
    canvasStyle: {
        background: "#4B4B4B",
    },
    currentPageStyle: {
        border: "2px solid #fe8e14",
    },
    pageStyle: {
        border: "8px solid rgba(0,0,0,0)",
        background: "rgba(255,255,255,0)",
    },
    selectedPageStyle: {
        border: "8px solid rgba(254,142,20,0.35)",
        background: "rgba(254,142,20,0.35)",
    },
    hoveredPageStyle: {
        border: "8px solid rgba(255,255,255,0.2)",
        background: "rgba(255,255,255,0.2)",
    },
    placeholderStyle: {
        border: "8px solid rgba(255,255,255,0.2)",
        background: "rgba(255,255,255,0.2)",
    },
    pageNumberStyle: {
        onPage: false,
        visibility: "visible",
        width: "32px",
        height: "24px",
        background: "rgba(255,255,255,0)",
        border: "0px solid #000",
        borderRadius: "0px",
        opacity: 1,
        color: "#fff",
        fontSize: "14px",
        fontFamily: "Open Sans",
        left: "50%",
        top: "",
        right: "",
        bottom: "3px",
        translateX: "-50%",
    },
    checkboxStyle: {
        visibility: "hidden",
        width: "16px",
        height: "16px",
        background: "#fff",
        border: "2px solid #999999",
        borderRadius: "0px",
        opacity: 1,
        left: "2px",
        top: "2px",
    },
    rows: 3,
    columns: 2,
    multiselectMode: false,
    scrollToLatest: false,
    enableDragPage: true,

    scrollDirection: "vertical",
    visibilty: "visible",
    size: "100%",
    position: "left",
};
```

#### Desktop

```typescript
{
    canvasStyle: {
        background: "#1E1C19",
    },
    currentPageStyle: {
        border: "2px solid #fe8e14",
    },
    pageStyle: {
        border: "8px solid rgba(0,0,0,0)",
        background: "rgba(255,255,255,0)",
    },
    selectedPageStyle: {
        border: "8px solid rgba(254,142,20,0.35)",
        background: "rgba(254,142,20,0.35)",
    },
    hoveredPageStyle: {
        border: "8px solid rgba(255,255,255,0.2)",
        background: "rgba(255,255,255,0.2)",
    },
    placeholderStyle: {
        border: "8px solid rgba(255,255,255,0.2)",
        background: "rgba(255,255,255,0.2)",
    },
    pageNumberStyle: {
        onPage: false,
        visibility: "visible",
        width: "32px",
        height: "24px",
        background: "rgba(255,255,255,0)",
        border: "0px solid #000",
        borderRadius: "0px",
        opacity: 1,
        color: "#fff",
        fontSize: "14px",
        fontFamily: "Open Sans",
        left: "50%",
        top: "",
        right: "",
        bottom: "3px",
        translateX: "-50%",
    },
    checkboxStyle: {
        visibility: "hidden",
        width: "16px",
        height: "16px",
        background: "#fff",
        border: "2px solid #999999",
        borderRadius: "0px",
        opacity: 1,
        left: "2px",
        top: "2px",
    },
    rows: 4,
    columns: 1,
    multiselectMode: false,
    scrollToLatest: false,
    enableDragPage: true,

    scrollDirection: "vertical",
    visibilty: "visible",
    size: "180px",
    position: "left",
};
```

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

### CaptureViewerConfig

```typescript
{
    canvasStyle: {
        background: "#e2e1de",
        cursor: "default",
    },
    quadSelectionStyle: {
        border: "2px solid #fe8e14",
        background: "rgba(255,255,255,0)",
    },

    enableAutoCapture: false,
    enableAutoDetect: false,
    enableTorch: false,
    maxFrameNumber: 10,
    acceptedPolygonConfidence: 80,
    captureMode: "multipleDocuments",
};
```

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

### PerspectiveViewerConfig

```typescript
{
    canvasStyle: {
        background: "#e2e1de",
        cursor: "default",
    },
    pageStyle: {
        border: "1px solid #707070",
        background: "#fff",
    },
    quadSelectionStyle: {
        // LineStyle
        border: "2px solid #fe8e14",
        background: "rgba(255,255,255,0)",
        // PointStyle
        ctrlBorderRadius: "50%",
        ctrlBackground: "#fe8e14",
        ctrlBorder: "2px solid #fe8e14",
        ctrlWidth: "10px",
        ctrlHeight: "10px",
        // invalidStyle
        invalidCtrlBorderColor: "red",
        invalidBorderColor: "red",
    },
    enableSlide: true,
};
```

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

### BrowseViewerConfig

```typescript
{
    canvasStyle: {
        background: "#e2e1de",
        cursor: "default",
    },
    currentPageStyle: {
        border: "2px solid #fe8e14",
    },
    pageStyle: {
        border: "8px solid rgba(0,0,0,0)",
        background: "rgba(255,255,255,0)",
    },
    selectedPageStyle: {
        border: "8px solid rgba(254,142,20,0.35)",
        background: "rgba(254,142,20,0.35)",
    },
    hoveredPageStyle: {
        border: "8px solid rgba(255,255,255,0.35)",
        background: "rgba(255,255,255,0.35)",
    },
    placeholderStyle: {
        border: "0px solid #fff",
        background: "#d1d1d1",
    },
    pageNumberStyle: {
        onPage: false,
        visibility: "visible",
        width: "32px",
        height: "24px",
        background: "rgba(255,255,255,0)",
        border: "0px solid #000",
        borderRadius: "0px",
        opacity: 1,
        color: "#000",
        fontSize: "14px",
        fontFamily: "Open Sans",
        left: "50%",
        top: "",
        right: "",
        bottom: "3px",
        translateX: "-50%",
    },
    checkboxStyle: {
        visibility: "hidden",
        width: "16px",
        height: "16px",
        background: "#fff",
        border: "2px solid #999999",
        borderRadius: "0px",
        opacity: 1,
        left: "2px",
        top: "2px",
    },
    rows: 4,
    columns: 6,
    multiselectMode: false,
    scrollToLatest: false,
    enableDragPage: true,
    scrollDirection: "vertical",
};
```
<div class="multi-panel-end"></div>

<div class="multi-panel-switching-end"></div>

<!-- <div class="multi-panel-switching-prefix"></div>

- [Edit viewer](#edit-viewer)
- [Capture viewer](#capture-viewer)
- [Perspective viewer](#perspective-viewer)
- [Browse viewer](#browse-viewer)

<div class="multi-panel-start"></div>

### EditViewerConfig

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

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

### CaptureViewerConfig

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

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

### PerspectiveViewerConfig

```typescript
interface PerspectiveViewerConfig {
	canvasStyle?: CanvasStyle;
	pageStyle?: BaseStyle;
	quadSelectionStyle?: QuadSelectionStyle;    
	enableSlide?: boolean; // Whether allow to slide the pages, default: true
}
```
<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

### BrowseViewerConfig

```typescript
interface BrowseViewerConfig {
    canvasStyle?: CanvasStyle;
    pageStyle?: BaseStyle;
    currentPageStyle?: BaseStyle; // only border effective
    selectedPageStyle?: BaseStyle;
    hoveredPageStyle?: BaseStyle;
    placeholderStyle?: BaseStyle;
    pageNumberStyle?: PageNumberStyle;
    checkboxStyle?: CheckboxStyle;
    rows?: number; //The number of rows
    columns?: number; //The number of columns
    multiselectMode?: boolean; //Whether can select multiple pages at one time
    scrollToLatest?: boolean; // Auto set the latest loaded page as the current page
    enableDragPage?: boolean; // Whether to allow drag&drop pages
    scrollDirection?: string; // The scroll direction, supports "horizontal", "vertical"
}
```
<div class="multi-panel-end"></div>

<div class="multi-panel-switching-end"></div> -->