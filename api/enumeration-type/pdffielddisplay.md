---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Type PdfFieldDisplay
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Type PdfFieldDisplay
breadcrumbText: Type PdfFieldDisplay
description: Dynamsoft Document Viewer Documentation API Reference Type PdfFieldDisplay Page
permalink: /api/enumeration-type/pdffielddisplay.html
---

# PdfFieldDisplay

## Syntax

```typescript
type PdfFieldDisplay = 0 | 1 | 2 | 3 | number;
```

## Remark

- `PdfFieldDisplay` uses the numeric value of the PDF field display mode. `0` means normally displayed, and a value greater than `0` corresponds to the PDF hidden flags.
- The implementation can keep numeric values that are not enumerated in the current version, so the business side should not assume that numbers other than the supported values have fixed meanings.

## Related

- [`EditableFieldProps`]({{ site.api }}interface/editablefieldprops.html)
- [`PdfFormFieldRaw`]({{ site.api }}interface/pdfformfieldraw.html)
