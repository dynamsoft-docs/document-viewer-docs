---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface CheckboxStyle
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface CheckboxStyle
breadcrumbText: Interface CheckboxStyle
description: Dynamsoft Document Viewer Documentation API Reference Interface CheckboxStyle Page
permalink: /api/interface/styleinterface/checkboxstyle.html
---

# CheckboxStyle

## Syntax

```typescript
interface CheckboxStyle {
	left?: string; // "px", "%"
	top?: string; // "px", "%"
	right?: string; // "px", "%"
	bottom?: string; // "px", "%"
	width?: string; // "px", "%"
	height?: string; // "px", "%"
	border?: string; // for example, "1px solid green"
	borderRadius?: string; // "px", "%"
	background?: string;
	translateX?: string; // "px", "%"
	translateY?: string; // "px", "%"
	opacity?: number;
	visibility?: string; // "hidden", "visible"
    checkMarkColor?: string;
	checkMarkLineWidth?: string; // "px"
}
```

//本页的一些属性打算画图解释，后续再添加

## Attributes

### left

Supports `px` and `%`.

### top

Supports `px` and `%`.

### right

Supports `px` and `%`.

### bottom

Supports `px` and `%`.

### width

The width of checkbox. Supports `px` and `%`.

### height

The height of checkbox. Supports `px` and `%`.

### border

The border style of checkbox. It contains three parts, borderWidth, borderStyle and borderColor.

Only takes effect when set borderWidth, borderStyle and borderColor at the same time.

borderWidth only supports `px` unit.

borderStyle only supports `dashed`, `solid`.

**Example**

```typescript
border: "2px dashed red", 
```

### borderRadius

The border radius of checkbox. Supports `px` and `%`.

### background

The background style.

**Example**

```typescript
background: "rgba(255,255,255,0)", 
```

### translateX

### translateY

### opacity

### visibility

Specify whether to show the checkbox. 

Supported value: `hidden`, `visible`

### checkMarkColor

The color of check mark.

### checkMarkLineWidth

The width of check mark.
