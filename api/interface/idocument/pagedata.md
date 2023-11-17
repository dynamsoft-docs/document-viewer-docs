---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface PageData
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface PageData
breadcrumbText: Interface PageData
description: Dynamsoft Document Viewer Documentation API Reference Interface PageData Page
permalink: /api/interface/idocument/pagedata.html
---

# PageData

## Syntax

```typescript
interface PageData {
    uid: string; // The uid of the page
    fileData: Blob; // The blob of the original file
    fileIndex?: number; // The page index of the original file
    filter?: string; // The filter type of the page
    perspectiveQuad?: Quad; // The detected quad in the page
    rotation?: number; // The angle of rotation
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
    }
}
```