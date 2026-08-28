---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface PdfFormWidgetRaw
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface PdfFormWidgetRaw
breadcrumbText: Interface PdfFormWidgetRaw
description: Dynamsoft Document Viewer Documentation API Reference Interface PdfFormWidgetRaw Page
permalink: /api/interface/pdfformwidgetraw.html
---

# PdfFormWidgetRaw

The raw data of a widget associated with a form field. This type is mainly used to read and save raw data, and is not used to directly operate on the DOM controls already rendered in the current viewer.

## Syntax

```typescript
interface PdfFormWidgetRaw {
  annotIndex?: number;
  pageIndex?: number;
  onStateName?: string;
  alternateName?: string;
  rect?: number[];
  bounds?: number[];
  [key: string]: unknown;
}
```

## Attributes

### annotIndex

The annotation index of the widget.

### pageIndex

The zero-based page index of the widget.

### onStateName

The state name used when the check box or the radio button is selected.

### alternateName

The alternate name of the widget, which can be used for accessibility or tooltips.

### rect

The rectangle of the widget, usually an array `[left, bottom, right, top]` in the PDF coordinate system.

### bounds

The bounds of the widget.

## Remark

- All the properties are optional.
- `[key: string]: unknown` means the parser can keep other PDF or parser extension properties.

## Related

- [`PdfFormFieldRaw`]({{ site.api }}interface/pdfformfieldraw.html)
