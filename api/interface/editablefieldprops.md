---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface EditableFieldProps
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface EditableFieldProps
breadcrumbText: Interface EditableFieldProps
description: Dynamsoft Document Viewer Documentation API Reference Interface EditableFieldProps Page
permalink: /api/interface/editablefieldprops.html
---

# EditableFieldProps

The runtime properties of a form field that can be modified with [`FormManager.setFieldProps()`]({{ site.api }}class/formmanager.html#setfieldprops). All the properties are optional; a call only updates the properties that are passed in.

## Syntax

```typescript
interface EditableFieldProps {
  value?: PdfFieldValue;
  readonly?: boolean;
  required?: boolean;
  visible?: boolean;
  display?: PdfFieldDisplay;
  topIndex?: number;
  isSignatureApplied?: boolean;
}
```

## Attributes

### value

The current value of the field. The type is [`PdfFieldValue`]({{ site.api }}enumeration-type/pdffieldvalue.html).

### readonly

Whether the field is read-only for direct user editing.

### required

Whether the field is required to have a valid value.

### visible

Whether the field and its associated controls are displayed.

### display

The display mode of the field. The type is [`PdfFieldDisplay`]({{ site.api }}enumeration-type/pdffielddisplay.html).

### topIndex

The index of the first option displayed in the current viewport of a list box.

### isSignatureApplied

Whether a signature has been applied. When set to `true`, the associated signature controls are also updated as signed.

## Related

- [`FormManager.setFieldProps()`]({{ site.api }}class/formmanager.html#setfieldprops)
