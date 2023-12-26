---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface CreateDocumentOptions
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface CreateDocumentOptions
breadcrumbText: Interface CreateDocumentOptions
description: Dynamsoft Document Viewer Documentation API Reference Interface CreateDocumentOptions Page
permalink: /api/interface/createdocumentoptions.html
---

# CreateDocumentOptions

## Syntax

```typescript
interface CreateDocumentOptions {
    name?: string; 
    author?: string; 
    creationDate?: string; 
}
```

## Attributes

### name

Specify the name of the new document.

### author

Specify the author of the new document.

### creationDate

Specify the creation date of the new document. Please note that the argument should be `D:YYYYMMDDHHmmSS`, like `D:20230101085959`.

## Related

- [`createDocument()`]({{ site.api }}class/documentmanager.html#createdocument)