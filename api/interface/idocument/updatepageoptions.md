---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface UpdatePageOptions
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface UpdatePageOptions
breadcrumbText: Interface UpdatePageOptions
description: Dynamsoft Document Viewer Documentation API Reference Interface UpdatePageOptions Page
permalink: /api/interface/idocument/updatepageoptions.html
---

# UpdatePageOptions

## Syntax

```typescript
interface UpdatePageOptions {
    fileIndex?: number; 
    rotation?: number; 
    filter?: string; 
    perspectiveQuad?: Quad; 
}
```

## Attributes

### fileIndex

Specify the page index of the file. 

If it is not specified, the first page in the file will be the updated page. 

If it is out of range, the last page in the file will be the updated page.

### rotation

The rotation angle of specified page. 

**Remark**

- Only multiples of 90 degrees are supported. 
- Postive value means clockwise rotation, negative value means counterclockwise rotation.

### filter

The filter type of the updated page. 

**Remark**

- If `imageFilter` handler is not set, the filter type won't be applied to the updated page. Please refer to [`setProcessingHandler()`]({{ site.api }}namespace/ddv.html#static-setprocessinghandler) and [How to configure image filter]({{ site.features }}advanced/imagefilter.html).

### perspectiveQuad

The quadangle for perspective transformation in updated page. Please refer to [`Quad`]({{ site.api }}enumeration-type/quad.html).

## Related

- [`updatePage()`]({{ site.api }}interface/idocument/index.html#updatepage)