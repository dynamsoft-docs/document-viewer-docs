---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface Source
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface Source
breadcrumbText: Interface Source
description: Dynamsoft Document Viewer Documentation API Reference Interface Source Page
---

# Source

## Syntax

```typescript
interface Source {
    fileData: Blob; 
    extraPageData?: ExtraPageData[]; 
    pageWidth: number;  
    pageHeight: number; 
}
```

## Attributes

### fileData

The blob of the file to be loaded.

### extraPageData

The extra data to be set. Please refer to [`ExtraPageData`]({{ site.api }}interface/idocument/extrapagedata.html);

### pageWidth

The page width of the displayed page. The unit is point.

### pageHeight

The page height of the displayed page. The unit is point.

*Common page sizes:*

 Page size | pageWidth (pt) | pageHeight (pt) 
-----------|------------------|-------------------
 Letter    | 612              | 792                
 Legal     | 612              | 1008                
 A4        | 597.6              | 842.4              
 A3        | 842.4             | 1188     

## Remark

- `Source` can be extended as [`PdfSource`]({{ site.api }}interface/idocument/pdfsource.html).

## Related

- [`loadSource()`]({{ site.api }}interface/idocument/index.html#loadsource)