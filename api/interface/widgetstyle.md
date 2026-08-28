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

The layout and display state information of a form widget in the PDF page. It is returned by the `style` attribute of [`IWidgetClickedEvent`]({{ site.api }}interface/iwidgetclickedevent.html).

## Syntax

```typescript
interface WidgetStyle {
  x: number;
  y: number;
  width: number;
  height: number;
  onStateName?: string;
  alternateName?: string;
  appearanceState?: string;
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

### onStateName

The state name used when the check box or the radio button is selected.

### alternateName

The alternate name of the widget, which can be used for accessibility or tooltips.

### appearanceState

The current appearance state of the widget.

## Remark

- `WidgetStyle` only describes the layout and appearance-related data of the widget and is not equivalent to the DOM `CSSStyleDeclaration`. To modify the style of a widget, use the DOM element or the application-side style management, instead of writing back the `style` object of the event to the Form Model.

## Related

- [`IWidgetClickedEvent`]({{ site.api }}interface/iwidgetclickedevent.html)
- [`EditViewer.widgetClicked`]({{ site.api }}class/editviewer.html#widgetclicked)
