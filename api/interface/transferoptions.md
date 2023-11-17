---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface TransferOptions
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface TransferOptions
breadcrumbText: Interface TransferOptions
description: Dynamsoft Document Viewer Documentation API Reference Interface TransferOptions Page
permalink: /api/interface/transferoptions.html
---

# TransferOptions

## Syntax

```typescript
interface TransferOptions {
    sourceIndices? : number[]; // The array of pages indices to be moved or copied. If not set, means all pages.
    insertBeforeIndex? : number; // The moved or copied pages will be placed before this index. If not set, the specified page(s) will be moved after the last page.
}
```

## Attributes