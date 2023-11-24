---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface DocumentDetectConfidence
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface DocumentDetectConfidence
breadcrumbText: Interface DocumentDetectConfidence
description: Dynamsoft Document Viewer Documentation API Reference Interface DocumentDetectConfidence Page
permalink: /api/interface/documentdetectconfidence.html
---

# DocumentDetectConfidence

## Syntax

```typescript
interface DocumentDetectConfidence {

    angleConfidence: number; 

    areaConfidence: number; 

    centerConfidence: number;

}
```

## Attributes

### angleConfidence

The confidence of detected angle. Value range: [0, 100] in percentage.

### areaConfidence

The confidence of detected area. Value range: [0, 100] in percentage.

### centerConfidence

The confidence of whether the detected quadrangle is in center. Value range: [0, 100] in percentage.

## Related

- [`calculateConfidence()`]({{ site.api }}class/advanced/documentdetect.html#calculateconfidence)
- [`calculateTotalConfidence()`]({{ site.api }}class/advanced/documentdetect.html#calculatetotalconfidence)