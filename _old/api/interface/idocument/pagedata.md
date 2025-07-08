---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface PageData
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface PageData
breadcrumbText: Interface PageData
description: Dynamsoft Document Viewer Documentation API Reference Interface PageData Page
---

# PageData

## Syntax

```typescript
interface PageData {
    uid: string; 
    fileData: Blob; 
    fileIndex?: number; 
    filter?: string; 
    perspectiveQuad?: Quad; 
    rotation?: number; 
    raw?: {
        width: number;
        height: number;
        data: Blob;
    },
    thumbnail?: {
        width: number;
        height: number;
        data: Blob;
    },
    display?: {
        width: number;
        height: number;
        data: Blob;
    },
    mediaBox: Rect, 
    cropBox: Rect
}
```

## Attributes

### uid

The uid of the page.

### fileData

The blob of the original file.

### fileIndex

The page index for the specified page in the original file.

### filter

The filter type of the specified page. 

### perspectiveQuad

The quadangle for perspective transformation in specified page. Please refer to [`Quad`]({{ site.api }}enumeration-type/quad.html).

### rotation

The rotation angle of specified page. 

### raw

The raw width, height, data of the specified page.

### thumbnail

The width, height, data of the specified page in thumbnail view.

### display

The width, height, data of the specified page in display view.

### mediaBox
MediaBox in the specified page. Units for left, top, width, and height are in points.

### cropBox

The crop area of the specified page. Units for left, top, width, and height are in points.

## Related

- [`getPageData()`]({{ site.api }}interface/idocument/index.html#getpagedata)