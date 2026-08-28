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
  value?: string | number | boolean | null | string[];
  alternateName?: string;
  readonly?: boolean;
  required?: boolean;
  visible?: boolean;
  removeUponSaving?: boolean;
}
```

## Attributes

### value

The current value of the field. The concrete value type depends on the field type: a text field usually uses `string`, a check box usually uses `boolean`, and a list box may use `string[]`. `null` means the field currently has no value.

### alternateName

The alternate name of the field, which can be used for accessibility or tooltips.

### readonly

Whether the field is read-only for direct user editing.

### required

Whether the field is required to have a valid value.

### visible

Whether the field and its associated controls are displayed.

### removeUponSaving

Indicates whether the field should be removed when the PDF is saved. If set to `true`, the field is removed upon saving. For example, a signature can be applied over the field, and the field can then be removed from the PDF.

## Related

- [`FormManager.setFieldProps()`]({{ site.api }}class/formmanager.html#setfieldprops)
- [`FormField`]({{ site.api }}interface/formfield.html)
