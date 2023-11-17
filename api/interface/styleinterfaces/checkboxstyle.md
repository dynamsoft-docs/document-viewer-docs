---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface CheckboxStyle
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface CheckboxStyle
breadcrumbText: Interface CheckboxStyle
description: Dynamsoft Document Viewer Documentation API Reference Interface CheckboxStyle Page
permalink: /api/interface/styleinterfaces/checkboxstyle.html
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
	background?: string;
	border?: string; // for example, "1px solid green"
	borderRadius?: string; // "px", "%"
	translateX?: string; // "px", "%"
	translateY?: string; // "px", "%"
	opacity?: number;
	visibility?: string; // "hidden", "visible"
    checkMarkColor?: string;
	checkMarkLineWidth?: string; // "px"
}
```

## Attributes