---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface AnnotationToolbarButton
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface AnnotationToolbarButton
breadcrumbText: Interface AnnotationToolbarButton
description: Dynamsoft Document Viewer Documentation API Reference Interface AnnotationToolbarButton Page
---

# AnnotationToolbarButton

## Syntax

```typescript
interface AnnotationToolbarButton {
    id?: string; 
    className?: string; 
    style?: CssStyleDeclaration; 
    tooltip?: string; 
    displayText?: string; 
}
```

## Attributes

### id

The id of Dom Element. If it is not specified, a random string will be generated.

### className

The className of CSS.

### style

The style which will cover CSS.

### tooltip

The tooltip of the button. 

### displayText

The display text of the button.

## Related

- [`ToolbarConfig`]({{ site.api }}interface/annotationinterface/toolbarconfig.html)