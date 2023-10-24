---
layout: default-layout
needAutoGenerateSidebar: true
noTitleIndex: true
title: Dynamsoft Document Viewer User Interface - Customize Elements
keywords: Documentation, Dynamsoft Document Viewer, User Interface, Customize Elements
breadcrumbText: Default Elements
description: Dynamsoft Document Viewer Documentation User Interface How to Customize Elements 
permalink: /ui/customize/elements.html
---

# Elements

## Customize default elements



## Create your own button

Besides the default elements, you may need to create your own button to call other features or your own features. Then you can refer to the steps below to create a customized button.

- Step one: Configure a button UiConfig.
    ```typescript
    const closeButton = {
        type: DDV.Elements.Button, 
        className: "ddv-button-close", // Set the button's icon
        tooltip: "close viewer", // Set tooltip for the button
        events: {
            click: "close", // Set the click event
        }, 
    };
    ```
- Step two: Place the button in the corresponding positions of the UiConfig and configure the UiConfig when creating the edit viewer.
    ```typescript
    const uiConfig = DDV.getDefaultUiConfig("editViewer"); // Get the default UiConfig of EditViewer
    const header = uiConfig.children[0];
    header.children[1].children.splice(4, 0, closeButton); // Add the close button to the header's right

    const editViewer = new DDV.EditViewer({
        containerId: "viewer",
        uiConfig: uiConfig,
    });
    ```
- Step three: Configure the button's event in the specified viewer.
    ```typescript
    editViewer.on("close", e => {
            editViewer.destroy();
        }
     );
    ```