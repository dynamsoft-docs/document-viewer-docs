---
layout: default-layout
needAutoGenerateSidebar: true
noTitleIndex: true
title: Dynamsoft Document Viewer User Interface - Customize Layout
keywords: Documentation, Dynamsoft Document Viewer, User Interface, Customize Layout
breadcrumbText: Default Elements
description: Dynamsoft Document Viewer Documentation User Interface How to Customize Layout 
permalink: /ui/customize/layout.html
---

# Layout

The default UI provided by DDV is basically a top-down layout. Taking the default desktop UI of EditViewer as an example, the header serves as the toolbar, and the main view is located below the toolbar.

[screenshot here]

## Based on the default layout

Without changing the toolbar, only changing the relative position of the toolbar and the main view, you can refer to the following steps:

- **Step one**: Refer to the default UiConfig which is listed on [Default user interface](#) section and reverse two elements in its children. Can use `getDefaultUiConfig` method,
    ```typescript
    const newUiConfig = DDV.getDefaultUiConfig("editViewer");
    newUiConfig.children.reverse();
    ```

    Or modify the default object directly.
    ```typescript
    const newUiConfig = {
            type: DDV.Elements.Layout,
            flexDirection: "column",
            className: "ddv-edit-viewer-desktop",
            children: [
                DDV.Elements.MainView,
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
            ],
        };
    ```
- **Step two**: Configure it when creating the new viewer.
    ```typescript
    const editViewer = new DDV.EditViewer({
        containerId: "viewer",
        uiConfig: newUiConfig,
    });
    ```
<!-- ### Method two: Update UI dynamically after creating the edit viewer.

- **Step one**: Get current UiConfig by using method [`getUiConfig()`]().
    ```typescript
    const editViewer = new DDV.EditViewer({
        containerId: "viewer",
    });
    const uiConfig = editViewer.getUiConfig();
    ```
- **Step two**: Reverse two elements in its children.
    ```typescript
    uiConfig.children.reverse();
    ```
- **Step three**: Update the revised UiConfig by using method [`updateUiConfig()`]().
    ```typescript
    editViewer.updateUiConfig(uiConfig); 
    ```-->

## Customize as you wish

Sometimes the requirements don't match the default UI layout at all, then it's also possible to completely customize the UiConfig. For example, adjust the toolbar to a sidebar, the UiConfig would be,

```typescript
const newUiConfig = {
    type: DDV.Elements.Layout,
    flexDirection: "row", // Configure the layout to be left to right
    className: "ddv-edit-viewer-desktop",
    children: [
        {
            type: DDV.Elements.Layout,
            flexDirection: "column", // Configure Elements layout to be top-down.
            style: {
                width: "46px", // Set the width of toolbar, you can also set other style configurations here.
            },
            children: [
                        DDV.Elements.ThumbnailSwitch,
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
                        DDV.Elements.Load,
                        DDV.Elements.Download,
                        DDV.Elements.Print,

            ],
        },
        DDV.Elements.MainView,
    ],
}
```

And configure the UiConfig when creating the edit viewer.

```typescript
const editViewer = new DDV.EditViewer({
    containerId: "viewer",
    uiConfig: newUiConfig,
});
```

Then you will get a viewer which is shown as below.

[screenshot image]

