---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface PdfSource
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface PdfSource
breadcrumbText: Interface PdfSource
description: Dynamsoft Document Viewer Documentation API Reference Interface PdfSource Page
permalink: /api/interface/idocument/pdfsource.html
---

# PdfSource

## Syntax

```typescript
interface PdfSource extends Source {
    /**
     * Default value: CM_AUTO
     */
    convertMode: EnumConvertMode,   
    /**
     * If a password is required to open the PDF, set it here. Default value: "".
     */ 
    password?: string,  
    renderOptions?: {
        /**
         * If convertMode is set to CM_RENDERALL or CM_AUTO, this controls whether or not annotations will be rendered. Default value: false.
         */
        renderAnnotations?: boolean,
        // DPI. Only affects text being rasterized. Does not affect images extracted from the PDF file. Default value: 200.
        resolution?: number,  
        // Pixels. 0 is no limit. Default value: 0.
        maxWidth?: number,
        // Pixels. 0 is no limit. Default value: 0.
        maxHeight?: number,
        //When set to true, the PDF will rasterize in greyscale， default value: false
        renderGrayscale?: boolean  
    }
}
```