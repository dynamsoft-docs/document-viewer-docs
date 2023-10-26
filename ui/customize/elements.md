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

Although DDV provides many default elements, some customizations are also required, such as, to unify icon style with the original system, to add tooltips and so on.

<div class="multi-panel-switching-prefix"></div>

- [Style & icon](#style-icon)
- [Event](#event)
- [Tooltip](#tooltip)
- [Display text](#display-text)

<div class="multi-panel-start"></div>

To change the style and icon of the default elements, can use the properties `style` and `className` of `UiConfig`, please refer to the example below.

**Example**

Change style and icon of `DDV.Elements.DeleteCurrent`.

```typescript
{
    type: DDV.Elements.DeleteCurrent,
    className: "ddv-button-done", // can change its icon to your own one
    style: {
        background: "blue", // change its background color
    },
};
```

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

Most of default elements have their own event, you may need to add new event(s) to them, can refer to below steps.

**Example**

Add an event to `DDV.Elements.Capture`.

```typescript
//Replace the original capture element in UiConfig with the object below.
{
    type: DDV.Elements.Capture,
    events: {
        click: "myClick";
    },
};

/*
const uiConfig = {......};
*/

//Bind the event in the specified viewer.
const captureViewer = new DDV.CaptureViewer({
        containerId: "viewer",
        uiConfig: uiConfig,
});
captureViewer.on("myClick", (e) => {
            console.log("captured");
});
```

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

DDV does not provide the default tooptips to the default elements, developers can configure it by use `getTooltip()` and `setTooltip()` easily. 

>It must be set before creating the viewer.

**Example**

Add tooltips to `DDV.Elements.RotateLeft` and `DDV.Elements.RotateRight`.

```typescript
const newTooltip = DDV.Elements.getTooltip();
newTooltip.RotateLeft = "Rotate left";
newTooltip.RotateRight = "Rotate right";

DDV.Elements.setTooltip(newTooltip);

const editViewer = new DDV.EditViewer({
    containerId: "viewer", 
});
```

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

If any accompanying display texts are required to add or change of the default elements, DDV provides the methods `getDisplayTextConfig()` and `setDisplayTextConfig()` for this requirement. 

>It must be set before creating the viewer.

**Example**

- Change display texts which are in `DDV.Elements.DisplayMode`.

    ![Change display text](/assets/imgs/changedistext.png)

    ```typescript
    const newDisplayText = DDV.Elements.getDisplayTextConfig();
    newDisplayText.DisplayMode_ContinuousPage = "Enable Scrolling";
    newDisplayText.DisplayMode_SinglePage = "Page by page";
    DDV.Elements.setDisplayTextConfig(newDisplayText);

    const editViewer = new DDV.EditViewer({
        containerId: "viewer", 
    });
    ```

- Add display texts to default elements, take `DDV.Elements.Pan` as an example.

    ![Add display text](/assets/imgs/adddistext.png)

    ```typescript
    const newDisplayText = DDV.Elements.getDisplayTextConfig();
    newDisplayText.Pan = "Pan";
    DDV.Elements.setDisplayTextConfig(newDisplayText);

    const editViewer = new DDV.EditViewer({
        containerId: "viewer", 
    });
    ```

- Change the position of the new-added display text relative to the icon. The default position of display text is on the right of the icon. 

    ![Change position of display text](/assets/imgs/positiondistext.png)

    ```typescript
    // Add display text firstly.
    const newDisplayText = DDV.Elements.getDisplayTextConfig();
    newDisplayText.Load = "Load";
    newDisplayText.Download = "Download";
    newDisplayText.Print = "Print";
    DDV.Elements.setDisplayTextConfig(newDisplayText);

    // Set the relative position by using style-flexDirection of the default element.
    // "column" means below the icon
    // "row-reverse" means on the left of the icon
    // "column-reverse" means above the icon
    const newElements = [
        {
            type: DDV.Elements.Load,
            style: { flexDirection: "column" }, 
        },
        {
            type: DDV.Elements.Download,
            style: { flexDirection: "column" }, 
        },
        {            
            type: DDV.Elements.Print,
            style: { flexDirection: "column" },
        }
    ];

    const viewerUi = DDV.getDefaultUiConfig("editViewer");
    const headerPart2 = viewerUi.children[0].children[1]; 

    // Use newElements to replace the original ones.
    headerPart2.children.splice(1, 3, ...newElements);

    // Create the new viewer with updated uiConfig.
    const editViewer = new DDV.EditViewer({
        containerId: "viewer", 
        uiConfig: viewerUi,
    });
    ```
    
**See Also**


<div class="multi-panel-end"></div>

<div class="multi-panel-switching-end"></div>


-------

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

![Create custom button](/assets/imgs/custombutton.png)