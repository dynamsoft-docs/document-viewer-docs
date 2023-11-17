---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface PageNumberStyle
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface PageNumberStyle
breadcrumbText: Interface PageNumberStyle
description: Dynamsoft Document Viewer Documentation API Reference Interface PageNumberStyle Page
permalink: /api/interface/styleinterfaces/pagenumberstyle.html
---

# PageNumberStyle

## Syntax

```typescript
interface PageNumberStyle {
    left?: string; // "px", "%"
	top?: string; // "px", "%"
	right?: string; // "px", "%"
	bottom?: string; // "px", "%"
	width?: string; // "px", "%"
	height?: string; // "px", "%"
	background?: string;
	border?: string; // for example, "1px solid green"
	borderRadius?: string; // "px", "%"
	translateX?: string; // "px", "%"
	translateY?: string; // "px", "%"
	opacity?: number;
    onPage?: boolean; // whether on image page or not
	visibility?: string; // "hidden", "visible"
	color?: string;
	fontSize?: string;
	fontFamily?: string; // "px"
}
```

## Attributes