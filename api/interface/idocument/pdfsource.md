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
        renderAnnotations?: EnumAnnotationRenderMode; 
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

Default value: `Dynamsoft.DDV.EnumConvertMode.CM_AUTO`

### password

If a password is required to open the PDF, please set it here. 

Default value: `""`.

### renderOptions

#### renderAnnotations

Specify how to load the annotations. Please refer to [`EnumAnnotationRenderMode`]({{ site.api }}enumeration-type/enumannotationrendermode.html).

Only take effects when [`convertMode`](#convertmode) is set to `Dynamsoft.DDV.EnumConvertMode.CM_RENDERALL` or `Dynamsoft.DDV.EnumConvertMode.CM_AUTO`(`Dynamsoft.DDV.EnumConvertMode.CM_RENDERALL` in fact).

Default value: `Dynamsoft.DDV.EnumAnnotationRenderMode.NO_ANNOTATIONS`

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

Only take effects when [`convertMode`](#convertmode) is set to `Dynamsoft.DDV.EnumConvertMode.CM_RENDERALL` or `Dynamsoft.DDV.EnumConvertMode.CM_AUTO`(`Dynamsoft.DDV.EnumConvertMode.CM_RENDERALL` in fact).

## Related

- [`loadSource()`]({{ site.api }}interface/idocument/index.html#loadsource)