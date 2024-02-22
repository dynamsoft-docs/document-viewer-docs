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
    convertMode: EnumConvertMode;   
    password?: string;  
    renderOptions?: {
        renderAnnotations?: boolean;
        resolution?: number;  
        maxWidth?: number;
        maxHeight?: number;
        renderGrayscale?: boolean;  
    };
}
```

## Extends

[`Source`]({{ site.api }}interface/idocument/source.html)

## Attributes

### convertMode

Specify PDF convert mode. Please refer to [`EnumConvertMode`]({{ site.api }}enumeration-type/enumconvertmode.html).

Default value: `CM_AUTO`

### password

If a password is required to open the PDF, please set it here. 

Default value: `""`.

### renderOptions

#### renderAnnotations

Whether the annotations will be rendered or not. Only take effects when [`convertMode`](#convertmode) is set to `CM_RENDERALL` or `CM_AUTO`.

Default value: `false`

#### resolution

PDF DPI. Only affects rasterized text. Does not affect images which are extracted from the PDF file. 

Default value: 200

#### maxWidth

Maximum width of the image to be rendered. 

In pixels. 0 means no limit. Default value: 0

#### maxHeight

Maximum height of the image to be rendered. 

In pixels. 0 means no limit. Default value: 0

#### renderGrayscale

Whether rasterize the PDF in grayscale.

Default value: `false`

## Related

- [`loadSource()`]({{ site.api }}interface/idocument/index.html#loadsource)