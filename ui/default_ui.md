---
layout: default-layout
needAutoGenerateSidebar: true
noTitleIndex: true
title: Dynamsoft Document Viewer User Interface - Default Elements
keywords: Documentation, Dynamsoft Document Viewer, User Interface, Default Elements
breadcrumbText: Default User Interface
description: Dynamsoft Document Viewer Documentation User Interface Default Elements part
permalink: /ui/default_ui.html
---

# Default User Interface

It can be seen from Viewers part, DDV provides the default UI design for the edit viewer, capture viewer and perspective viewer. They basically contain the main features of each type of viewer. 

<div class="multi-panel-switching-prefix"></div>

- [Edit viewer](#edit-viewer)
- [Capture viewer](#capture-viewer)
- [Perspective viewer](#perspective-viewer)
- [Browse viewer](#browse-viewer)

<div class="multi-panel-start"></div>

## Edit viewer

### Mobile

Default UiConfig:

```typescript
{
    type: DDV.Elements.Layout,
    flexDirection: "column",
    className: "ddv-edit-viewer-mobile",
    children: [
        {
            type: DDV.Elements.Layout,
            className: "ddv-edit-viewer-header-mobile",
            children: [
                DDV.Elements.ThumbnailSwitch,
                DDV.Elements.Pagination,
                DDV.Elements.Download,
            ],
        },
        DDV.Elements.MainView,
        {
            type: DDV.Elements.Layout,
            className: "ddv-edit-viewer-footer-mobile",
            children: [
                DDV.Elements.DisplayMode,
                DDV.Elements.RotateLeft,
                DDV.Elements.Crop,
                DDV.Elements.Filter,
                DDV.Elements.Undo,
                DDV.Elements.Delete,
                DDV.Elements.Load,
            ],
        },
    ],
};
```

![Default mobile EditViewer UI](/assets/imgs/dmeditui.png)

### Desktop

Default UiConfig:

```typescript
{
    type: DDV.Elements.Layout,
    flexDirection: "column",
    className: "ddv-edit-viewer-desktop",
    children: [
        {
            type: DDV.Elements.Layout,
            className: "ddv-edit-viewer-header-desktop",
            children: [
                {
                    type: DDV.Elements.Layout,
                    children: [
                        DDV.Elements.ThumbnailSwitch,
                        DDV.Elements.Zoom,
                        DDV.Elements.FitMode,
                        DDV.Elements.DisplayMode,
                        DDV.Elements.RotateLeft,
                        DDV.Elements.RotateRight,
                        DDV.Elements.Crop,
                        DDV.Elements.Filter,
                        DDV.Elements.Undo,
                        DDV.Elements.Redo,
                        DDV.Elements.DeleteCurrent,
                        DDV.Elements.DeleteAll,
                        DDV.Elements.Pan,
                    ],
                },
                {
                    type: DDV.Elements.Layout,
                    children: [
                        {
                            type: DDV.Elements.Pagination,
                            className: "ddv-edit-viewer-pagination-desktop",
                        },
                        DDV.Elements.Load,
                        DDV.Elements.Download,
                        DDV.Elements.Print,
                    ],
                },
            ],
        },
        DDV.Elements.MainView,
    ],
};
```

![Default desktop EditViewer UI](/assets/imgs/ddeditui.png)

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

## Capture viewer

### Mobile

Default UiConfig:

```typescript
{
    type: DDV.Elements.Layout,
    flexDirection: "column",
    children: [
        {
            type: DDV.Elements.Layout,
            className: "ddv-capture-viewer-header-mobile",
            children: [
                {
                    type: "CameraResolution",
                    className: "ddv-capture-viewer-resolution",
                },
                DDV.Elements.Flashlight,
            ],
        },
        DDV.Elements.MainView,
        {
            type: DDV.Elements.Layout,
            className: "ddv-capture-viewer-footer-mobile",
            children: [
                DDV.Elements.AutoDetect,
                DDV.Elements.AutoCapture,
                {
                    type: "Capture",
                    className: "ddv-capture-viewer-captureButton",
                },
                DDV.Elements.ImagePreview,
                DDV.Elements.CameraConvert,
            ],
        },
    ],
};
```

![Default mobile CaptureViewer UI](/assets/imgs/dmcaptureui.png)

### Desktop

Default UiConfig:

```typescript
{
    type: DDV.Elements.Layout,
    flexDirection: "column",
    className: "ddv-capture-viewer-desktop",
    children: [
        {
            type: DDV.Elements.Layout,
            className: "ddv-capture-viewer-header-desktop",
            children: [
                {
                    type: DDV.Elements.CameraResolution,
                    className: "ddv-capture-viewer-resolution-desktop",
                },
                DDV.Elements.AutoDetect,
                {
                    type: DDV.Elements.Capture,
                    className: "ddv-capture-viewer-capture-desktop",
                },
                DDV.Elements.AutoCapture,
            ],
        },
        DDV.Elements.MainView,
        {
            type: DDV.Elements.ImagePreview,
            className: "ddv-capture-viewer-image-preview-desktop",
        },
    ],
};
```

![Default desktop CaptureViewer UI](/assets/imgs/ddcaptureui.png)

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

## Perspective viewer

### Mobile

Default UiConfig:

```typescript
{
    type: DDV.Elements.Layout,
    flexDirection: "column",
    children: [
        {
            type: DDV.Elements.Layout,
            className: "ddv-perspective-viewer-header-mobile",
            children: [
                DDV.Elements.Blank,
                DDV.Elements.Pagination,
                DDV.Elements.Perspective,
            ],
        },
        DDV.Elements.MainView,
        {
            type: DDV.Elements.Layout,
            className: "ddv-perspective-viewer-footer-mobile",
            children: [
                DDV.Elements.ResetQuad,
                DDV.Elements.RotateLeft,
                DDV.Elements.RotateRight,
                DDV.Elements.DeleteCurrent,
                DDV.Elements.DeleteAll,
            ],
        },
    ],
};
```

![Default mobile PerspectiveViewer UI](/assets/imgs/dmperui.png)

### Desktop

Default UiConfig:

```typescript
{
    type: DDV.Elements.Layout,
    flexDirection: "column",
    children: [
        {
            type: DDV.Elements.Layout,
            className: "ddv-perspective-viewer-header-desktop",
            children: [
                DDV.Elements.ResetQuad,
                DDV.Elements.RotateLeft,
                DDV.Elements.RotateRight,
                DDV.Elements.DeleteCurrent,
                DDV.Elements.DeleteAll,
                {
                    type: DDV.Elements.Pagination,
                    className: "ddv-perspective-viewer-pagination-desktop",
                },
                {
                    type: DDV.Elements.Perspective,
                    className: "ddv-perspective-viewer-perspective-desktop",
                },
            ],
        },
        DDV.Elements.MainView,
    ],
};
```

![Default desktop PerspectiveViewer UI](/assets/imgs/ddperui.png)

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

## Browse viewer

Default UiConfig:

```typescript
{
    type: DDV.Elements.Layout,
    children: [
        DDV.Elements.MainView,
    ],
};
```

<div class="multi-panel-end"></div>

<div class="multi-panel-switching-end"></div>







