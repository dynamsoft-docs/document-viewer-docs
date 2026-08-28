---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface WidgetStyle
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface WidgetStyle
breadcrumbText: Interface WidgetStyle
description: Dynamsoft Document Viewer Documentation API Reference Interface WidgetStyle Page
permalink: /api/interface/widgetstyle.html
---

# WidgetStyle

The layout information of a form widget in the PDF page. It is returned by the `style` attribute of [`IWidgetClickedEvent`]({{ site.api }}interface/iwidgetclickedevent.html).

## Syntax

```typescript
interface WidgetStyle {
  x: number;
  y: number;
  width: number;
  height: number;
}
```

## Attributes

### x

The left position of the widget.

### y

The top position of the widget.

### width

The width of the widget.

### height

The height of the widget.

## Remark

- `WidgetStyle` only describes the layout data of the widget and is not equivalent to the DOM `CSSStyleDeclaration`. To modify the style of a widget, use the [`FieldElement`]({{ site.api }}interface/fieldelement.html) DOM elements or the application-side style management.

## Related

- [`IWidgetClickedEvent`]({{ site.api }}interface/iwidgetclickedevent.html)
- [`EditViewer.widgetClicked`]({{ site.api }}class/editviewer.html#widgetclicked)
