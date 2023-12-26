---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface ExtraPageData
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface ExtraPageData
breadcrumbText: Interface ExtraPageData
description: Dynamsoft Document Viewer Documentation API Reference Interface ExtraPageData Page
permalink: /api/interface/idocument/extrapagedata.html
---

# ExtraPageData

## Syntax

```typescript
interface ExtraPageData {
    index: number; 
    rotation?: number;
    filter?: string;
    perspectiveQuad?: Quad;
}
```

## Attributes

### index

The page index to set extra data.

### rotation

The rotation angle of specified page. 

**Remark**

- Only multiples of 90 degrees are supported. 
- Postive value means clockwise rotation, negative value means counterclockwise rotation.

### filter

The filter type of the specified page. 

**Remark**

- If `imageFilter` handler is not set, the filter type won't be applied to the specified page. Please refer to [`setProcessingHandler()`]({{ site.api }}namespace/ddv.html#static-setprocessinghandler) and [How to configure image filter]({{ site.features }}advanced/imagefilter.html).

### perspectiveQuad

The quadangle for perspective transformation in specified page. Please refer to [`Quad`]({{ site.api }}enumeration-type/quad.html).

## Related

- [`Source`]({{ site.api }}interface/idocument/source.html)