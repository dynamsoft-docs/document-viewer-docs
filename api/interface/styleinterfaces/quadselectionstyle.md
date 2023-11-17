---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface QuadSelectionStyle
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface QuadSelectionStyle
breadcrumbText: Interface QuadSelectionStyle
description: Dynamsoft Document Viewer Documentation API Reference Interface QuadSelectionStyle Page
permalink: /api/interface/styleinterface/quadselectionstyle.html
---

# QuadSelectionStyle

## Syntax

```typescript
interface QuadSelectionStyle {
	border?: string; // The border of Selection, for example, "1px solid green", border-width only supports px unit, border-style only supports "dashed" & "solid"
	background?: string; 
	ctrlBorderRadius?: string; // The border radius of Control Points, only supports "px", "%"
    ctrlBorder?: string; // The border style of Control Points, for example, "1px solid green"
	ctrlWidth?: string; // The width of Control Points, only supports px unit
	ctrlHeight?: string; // The height of Control Points, only supports px unit
	ctrlBackground?: string; // The backgroud of Control Points
	invalidCtrlBorderColor?: string; // The border color of Control Points when the quad selection is invalid.
	invalidBorderColor?: string; // The border color of Selection when the quad selection is invalid.
}
```

## Attributes