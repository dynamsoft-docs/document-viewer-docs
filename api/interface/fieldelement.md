---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface FieldElement
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface FieldElement
breadcrumbText: Interface FieldElement
description: Dynamsoft Document Viewer Documentation API Reference Interface FieldElement Page
permalink: /api/interface/fieldelement.html
---

# FieldElement

The rendered DOM elements of a form widget.

## Syntax

```typescript
interface FieldElement {
  container: HTMLElement;
  content: HTMLElement;
}
```

## Attributes

### container

The container element of the widget.

### content

The content element of the widget, where the field value or the visual content is displayed.

## Remark

- The `content` element is usually the one to style or to attach event listeners to, while the `container` element wraps the whole widget area.

## Related

- [`EditViewer.getFieldElements()`]({{ site.api }}class/editviewer.html#getfieldelements)
- [`IWidgetClickedEvent`]({{ site.api }}interface/iwidgetclickedevent.html)
