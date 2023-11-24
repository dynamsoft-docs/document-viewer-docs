---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Namespace - Dynamsoft.DDV.Elements
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Namespace, Dynamsoft.DDV.Elements
breadcrumbText: Dynamsoft.DDV.Elements
description: Dynamsoft Document Viewer Documentation API Reference Namespace Dynamsoft.DDV.Elements Page
permalink: /api/namespace/ddv_elements.html
---

# Dynamsoft.DDV.Elements

## API Index

**Methods**

| API Name               | Description                                                  |
| ---------------------- | ------------------------------------------------------------ |
| [`<static>` `getTooltip()`](#static-gettooltip)           | Get tooltip object of default elements.                      |
| [`<static>` `setTooltip()`](#static-settooltip)           | Set tooltip to default elements.                             |
| [`<static>` `getDisplayTextConfig()`](#static-getdisplaytextconfig) | Get DisplayTextConfig object of default elements.            |
| [`<static>` `setDisplayTextConfig()`](#static-setdisplaytextconfig) | Set display text of the default element to your own words or language. |

**Properties**

| Name                   | Description                                                  |
| ---------------------- | ------------------------------------------------------------ |
| `Layout`      |            |
| `Button`      |            |

***Built-in Elements***


## Methods

### `<static>` getTooltip()

Get Tooltip object of default elements.

**Syntax**

```typescript
static getTooltip(): Tooltip;
```

**Return value**

A Tooltip object. Please refer to [`Tooltip`]().

**Example**

```typescript
const mytooltips = Dynamsoft.DDV.Elements.getTooltip();
```

### `<static>` setTooltip()

Set tooltip to default elements.

**Syntax**

```typescript
static setTooltip(tooltip: Tooltip): boolean; 
```

**Parameters**

`tooltip`: A Tooltip object to set. Please refer to [`Tooltip`]().

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code snippet**

- First method
    ```typescript
    const mytooltips = Dynamsoft.DDV.Elements.getTooltip();
    mytooltips.Capture = "Capture";
    mytooltips.Flashlight = "Flashlight"；

    Dynamsoft.DDV.Elements.setTooltip(mytooltips);
    ```
- Second method

    ```typescript
    Dynamsoft.DDV.Elements.setTooltip({
        Capture: "Capture",
        Flashlight: "Flashlight",
    });
    ```

**Remark**

- Need to be set before creating viewers.

### `<static>` getDisplayTextConfig()

Get DisplayTextConfig object of default elements.

**Syntax**

```typescript
static getDisplayTextConfig(): DisplayTextConfig;
```

**Return value**

A DisplayTextConfig object. Please refer to [`DisplayTextConfig`]().

### `<static>` setDisplayTextConfig()

Set display text of the default element to your own words or language.

**Syntax**

```typescript
static setDisplayTextConfig(displaytextconfig: DisplayTextConfig): boolean; 
```

**Parameters**

`displaytextconfig`: The DisplayTextConfig object to set. Please refer to [`DisplayTextConfig`]().

**Return Value**

`true`: Successfully.

`false`: Failed.

**Example**

- First method
    ```typescript
    const mytextconfig = Dynamsoft.DDV.Elements.getDisplayTextConfig();
    mytextconfig.FitMode_FitWidth = "Passform Breite";
    mytextconfig.FitMode_FitHeight = "Passform Höhe";

    Dynamsoft.DDV.Elements.setDisplayTextConfig(mytextconfig);
    ```

- Second method
    ```typescript
    Dynamsoft.DDV.Elements.setDisplayTextConfig({
        FitMode_FitWidth: "Passform Breite",
        FitMode_FitHeight: "Passform Höhe",
    });
    ```

**Remark**

- Need to be set before creating viewers.

## Properties