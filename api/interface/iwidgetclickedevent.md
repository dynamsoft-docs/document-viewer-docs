---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface IWidgetClickedEvent
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface IWidgetClickedEvent
breadcrumbText: Interface IWidgetClickedEvent
description: Dynamsoft Document Viewer Documentation API Reference Interface IWidgetClickedEvent Page
permalink: /api/interface/iwidgetclickedevent.html
---

# IWidgetClickedEvent

The event object of the `widgetClicked` event of [`EditViewer`]({{ site.api }}class/editviewer.html#widgetclicked).

## Syntax

```typescript
interface IWidgetClickedEvent {
  fieldUid: string;
  widgetUid: string;
  el: HTMLElement;
  style: WidgetStyle;
}
```

## Attributes

### fieldUid

The globally unique uid of the field the clicked widget belongs to.

### widgetUid

The uid of the clicked widget.

### el

The DOM element that is actually rendered and clicked in the current viewer.

### style

The layout and display state information of the widget in the PDF page. The type is [`WidgetStyle`]({{ site.api }}interface/widgetstyle.html).

## Related

- [`EditViewer.widgetClicked`]({{ site.api }}class/editviewer.html#widgetclicked)
- [`WidgetStyle`]({{ site.api }}interface/widgetstyle.html)
