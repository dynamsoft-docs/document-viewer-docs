---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Type PdfFieldValue
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Type PdfFieldValue
breadcrumbText: Type PdfFieldValue
description: Dynamsoft Document Viewer Documentation API Reference Type PdfFieldValue Page
permalink: /api/enumeration-type/pdffieldvalue.html
---

# PdfFieldValue

## Syntax

```typescript
type PdfFieldValue = string | number | boolean | null | string[];
```

## Remark

- The concrete usage constraint of `PdfFieldValue` depends on the field type: a text field usually uses `string`, a check box usually uses `boolean`, and a list box may use `string[]`. `null` means the field currently has no value.

## Related

- [`EditableFieldProps`]({{ site.api }}interface/editablefieldprops.html)
- [`PdfFormFieldRaw`]({{ site.api }}interface/pdfformfieldraw.html)
