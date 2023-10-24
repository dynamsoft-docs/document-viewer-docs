---
layout: default-layout
needAutoGenerateSidebar: true
noTitleIndex: true
title: Dynamsoft Document Viewer User Interface - UiConfig
keywords: Documentation, Dynamsoft Document Viewer, User Interface, UiConfig
breadcrumbText: UiConfig
description: Dynamsoft Document Viewer Documentation User Interface UiConfig part
permalink: /ui/uiconfig.html
---



# UiConfig

First, we need to know how DDV creates the UI. DDV has an interface named `UiConfig`, which is used to configure the layout and the elements includes. And UiConfig can be nested to achieve a complex layout.

## Structure

## How to configure

Take the default mobile edit viewer as the example to learn how UiConfig is configured.

![Alt text](image-2.png)
<center>Figure 1</center>



As shown in Figure 1, whole layout can be divided into three parts, header, main view and footer. 

So simply speaking, the overall UiConfig framework is roughly as follows,

```typescript
const mobileEditViewerUiConfig = {
    type: DDV.Elements.Layout,
    flexDirection: "column",
    className: "ddv-edit-viewer-mobile",
    children: [
        headerUiConfig,
        DDV.Elements.MainView, // the view which is used to display the pages
        footerUiConfig,
    ],
};
```

- When `type` is set to `DDV.Elements.Layout` and flexDirection is `column`, it means the layout is from top to bottom.
- `DDV.Elements.MainView` is one of the default elements DDV provides. Learn more about default elements.

Next, the specific configuration of headerUiConfig, it can be seen that the icons are arranged from left to right, then


![Alt text](image-6.png)


```typescript
{
    type: DDV.Elements.Layout,
    flexDirection: "row", // since the default value is "row", this line can be left out.
    className: "ddv-edit-viewer-header-mobile",
    children: [
        DDV.Elements.ThumbnailSwitch,
        DDV.Elements.Pagination,
        DDV.Elements.Download,
    ],
}
```


Also can know the footerUiConfig is as follows,

![Alt text](image-4.png)

```typescript
{
    type: DDV.Elements.Layout,
    flexDirection: "row", // since the default value is "row", this line can be left out.
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
}
```

Combining these three parts creates the overall user interface layout.

```typescript
const mobileEditViewerUiConfig: UiConfig = {
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

## Reference