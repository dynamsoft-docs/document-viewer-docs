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
    fileIndex?: number; // Specify the page index of the file, if not set, index 0 will be the updated page.
    filter?: string; // The filter type of the page
    rotation?: number; // The angle of rotation
    perspectiveQuad?: Quad; // The detected quad in the page
}
```