---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface PdfFormActionRaw
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface PdfFormActionRaw
breadcrumbText: Interface PdfFormActionRaw
description: Dynamsoft Document Viewer Documentation API Reference Interface PdfFormActionRaw Page
permalink: /api/interface/pdfformactionraw.html
---

# PdfFormActionRaw

The raw data of a form field action. This type is mainly used to read and save raw data.

## Syntax

```typescript
interface PdfFormActionRaw {
  type?: string;
  javaScript?: string;
  javascript?: string;
  script?: string;
  [key: string]: unknown;
}
```

## Attributes

### type

The type of the action.

### javaScript

The JavaScript script of the action.

### javascript

The JavaScript script of the action. It is kept for compatibility with different PDF or parser conventions.

### script

The script of the action.

## Remark

- All the properties are optional.
- The action scripts in the raw data are returned as data only. DDV does not execute form JavaScript within the scope of the current version.
- `[key: string]: unknown` means the parser can keep other PDF or parser extension properties.

## Related

- [`PdfFormFieldRaw`]({{ site.api }}interface/pdfformfieldraw.html)
