---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface Flags
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface Flags
breadcrumbText: Interface Flags
description: Dynamsoft Document Viewer Documentation API Reference Interface Flags Page
permalink: /api/interface/annotationinterface/flags.html
---

# Flags

## Syntax

```typescript
interface Flags {
    print?: boolean; 
    noView?: boolean; 
    readOnly?: boolean; 
}
```

## Attributes

### print

<!--To print the annotation when printing the page, default value: `true`.-->
Whether the annotation is printable, default value: `true`. Only printable annotations can be printed when the page is printed.

### noView

Not to display the annotation or allow a user to interact with the annotation, default value: `false`.

### readOnly

Not to allow a user to interact with the annotation, default value: `false`.

## Related

- [`RectAnnotationOptions`]({{ site.api }}interface/annotationinterface/rectannotationoptions.html)
- [`EllipseAnnotationOptions`]({{ site.api }}interface/annotationinterface/ellipseannotationoptions.html)
- [`PolygonAnnotationOptions`]({{ site.api }}interface/annotationinterface/polygonannotationoptions.html)
- [`PolylineAnnotationOptions`]({{ site.api }}interface/annotationinterface/polylineannotationoptions.html)
- [`LineAnnotationOptions`]({{ site.api }}interface/annotationinterface/lineannotationoptions.html)
- [`InkAnnotationOptions`]({{ site.api }}interface/annotationinterface/inkannotationoptions.html)
- [`TextBoxAnnotationOptions`]({{ site.api }}interface/annotationinterface/textboxannotationoptions.html)
- [`TextTypewriterAnnotationOptions`]({{ site.api }}interface/annotationinterface/texttypewriterannotationoptions.html)
- [`StampAnnotationOptions`]({{ site.api }}interface/annotationinterface/stampannotationoptions.html)