---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface Source
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface Source
breadcrumbText: Interface Source
description: Dynamsoft Document Viewer Documentation API Reference Interface Source Page
permalink: /api/interface/idocument/source.html
---

# Source

## Syntax

```typescript
interface Source {
    fileData: Blob; 
    extraPageData: ExtraPageData[]; 
}
```

## Attributes

### fileData

The blob of the file to be loaded.

### extraPageData

The extra data to be set. Please refer to [`ExtraPageData`]({{ site.api }}interface/idocument/extrapagedata.html);

## Remark

- `Source` can be extanded as [`PdfSource`]({{ site.api }}interface/idocument/pdfsource.html).

## Related

- [`loadSource()`]({{ site.api }}interface/idocument/index.html#loadsource)