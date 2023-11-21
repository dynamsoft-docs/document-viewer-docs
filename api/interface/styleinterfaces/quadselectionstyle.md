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

### border

The border style of selection.

The border style contains three parts, borderWidth, borderStyle and borderColor.

Only takes effect when set borderWidth, borderStyle and borderColor at the same time.

borderWidth only supports `px` unit.

borderStyle only supports `dashed`, `solid`.

**Example**

```typescript
border: "2px dashed red", 
```

### background

The background style of selection.

**Example**

```typescript
background: "rgba(220, 220, 220,0.5)", 
```

> ***The following attributes do not apply to `CaptureViewer` so far.***

### ctrlBorderRadius

The border radius of Control Points. Supports `px` and `%`.

### ctrlBorder

The border style of Control Points.

```typescript
border: "1px solid green", 
```

### ctrlWidth

The width of Control Points. Only supports `px` unit.

### ctrlHeight

The height of Control Points. Only supports `px` unit.

### ctrlBackground

The backgroud style of Control Points.

### invalidCtrlBorderColor

The border color of Control Points when the selection is invalid.

### invalidBorderColor

The border color of Selection when the selection is invalid.