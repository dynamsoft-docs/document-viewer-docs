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
    index: number; // The page index to set extra data.
    rotation?: number;
    filter?: string;
    perspectiveQuad?: Quad; // The detected quad on this page.
}
```