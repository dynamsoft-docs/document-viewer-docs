---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface MergeDocumentOptions
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface MergeDocumentOptions
breadcrumbText: Interface MergeDocumentOptions
description: Dynamsoft Document Viewer Documentation API Reference Interface MergeDocumentOptions Page
permalink: /api/interface/mergedocumentoptions.html
---

# MergeDocumentOptions

## Syntax

```typescript
interface MergeDocumentOptions {
    name?: string; // Specify the name of the new document.
    author?: string; // Specify the author of the new document.
    creationDate?: string; // Specify the creation date. Note that the argument should be 'D:YYYYMMDDHHmmSS', like 'D:20230101085959'.
    deleteOriginal?: boolean; // Whether to delete the original documents. Default: false
}
```

## Attributes