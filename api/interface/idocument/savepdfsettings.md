---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface SavePdfSettings
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface SavePdfSettings
breadcrumbText: Interface SavePdfSettings
description: Dynamsoft Document Viewer Documentation API Reference Interface SavePdfSettings Page
permalink: /api/interface/idocument/savepdfsettings.html
---

# SavePdfSettings

## Syntax

```typescript
interface SavePdfSettings {
    /**
     * Specify the author.
     */
    author?: string;
    /**
     * Specify the compression type.
     */
    compression?: EnumPDFCompressionType;
     /**
     * Specify the page type.
     */
    pageType?: EnumPDFPageType; 
    /**
     * Specify the creator.
     */
    creator?: string;
    /**
     * Specify the creation date. 
     * Note that the argument should be 'D:YYYYMMDDHHmmSS', like 'D:20230101085959'.
     */
    creationDate?: string;
    /**
     * Specify the key words.
     */
    keyWords?: string;
    /**
     * Specify the modified date.
     * Note that the argument should be 'D:YYYYMMDDHHmmSS', like 'D:20230101085959'.
     */
    modifiedDate?: string;
    /**
     * Specify the producer.
     */
    producer?: string;
    /**
     * Specify the subject.
     */
    subject?: string;
    /**
     * Specify the title.
     */
    title?: string;
    /**
     * Specify the PDF version. For example, 1.5. The allowed values are 1.1 ~ 1.7.
     * NOTE: If the compression type is PDF_JBig2, the lowerest version is 1.4
     * If the compression type is PDF_JP2000, the lowerest version is 1.5
     */
    version?: string;
    /**
     * Specify the quality of the images in the file.
     * The value ranges from 0 to 100.
     * Only valid when the {compression} is 'JPEG' or 'JPEG2000'.
     */
    quality?: number;
}
```