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

```typescript
interface UiConfig {
	type: string; // DDV.Elements.Layout, DDV.Elements.Button, default elements.
	flexDirection?: string; //"column", "row", only available when type is DDV.Elements.Layout
	id?: string; //the id of dom element, default: random
	className?: string; // className of CSS
	style?: CSSStyleDeclaration; // can cover the original CSS style 
	tooltip?: string; //tooltip
	events?: Record<string, string>;
	children?: (UiConfig | string)[]; // take effect only when type is DDV.Elements.Layout
}
```

## How to configure

Take the mobile edit viewer below as the example to learn how UiConfig is configured.

![EditViewer mobile UiConfig](/assets/imgs/editmuiconfig.png)

As shown in the figure above, whole layout can be divided into three parts, header, main view and footer. 

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


![EditViewer mobile header UiConfig](/assets/imgs/editmhuiconfig.png)


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

![EditViewer mobile footer UiConfig](/assets/imgs/editmfuiconfig.png)

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
const mobileEditViewerUiConfig = {
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