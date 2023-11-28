---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface PageNumberStyle
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface PageNumberStyle
breadcrumbText: Interface PageNumberStyle
description: Dynamsoft Document Viewer Documentation API Reference Interface PageNumberStyle Page
permalink: /api/interface/styleinterface/pagenumberstyle.html
---

# PageNumberStyle

## Syntax

```typescript
interface PageNumberStyle {
	visibility?: string; // "hidden", "visible"
	onPage?: boolean; // whether on image page or not
	width?: string; // "px", "%"
	height?: string; // "px", "%"
	border?: string; // for example, "1px solid green"
	borderRadius?: string; // "px", "%"
	background?: string;
	color?: string;
	fontSize?: string;
	fontFamily?: string; // "px"
	opacity?: number;
    left?: string; // "px", "%"
	top?: string; // "px", "%"
	right?: string; // "px", "%"
	bottom?: string; // "px", "%"
	translateX?: string; // "px", "%"
	translateY?: string; // "px", "%"
}
```

//本页的一些属性打算画图解释，后续再添加

## Attributes

### visibility

Specify whether to show the page number. 

Supported value: `hidden`, `visible`

### onPage

Specify whether the page number is on page or not.

### width

The width of page number. Supports `px` and `%`.

### height

The height of page number. Supports `px` and `%`.

### border

The border style of page number. It contains three parts, borderWidth, borderStyle and borderColor.

Only takes effect when set borderWidth, borderStyle and borderColor at the same time.

borderWidth only supports `px` unit.

borderStyle only supports `dashed`, `solid`.

**Example**

```typescript
border: "2px dashed red", 
```

### borderRadius

The border radius of page number. Supports `px` and `%`.

### background

The background style.

**Example**

```typescript
background: "rgba(255,255,255,0)", 
```

### color

The color of page number font.

### fontSize

The size of page number font.

### fontFamily

The font-family of page number font.

![Page Number](/assets/imgs/pagenumber-1.png)

### opacity

The opacity of the whole page number.

### left

Supports `px` and `%`.

### top

Supports `px` and `%`.

### right

Supports `px` and `%`.

### bottom

Supports `px` and `%`.

### translateX

Supports `px` and `%`.

### translateY

Supports `px` and `%`.