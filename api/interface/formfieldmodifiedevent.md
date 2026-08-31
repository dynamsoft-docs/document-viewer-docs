---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Interface FormFieldModifiedEvent
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Interface FormFieldModifiedEvent
breadcrumbText: Interface FormFieldModifiedEvent
description: Dynamsoft Document Viewer Documentation API Reference Interface FormFieldModifiedEvent Page
permalink: /api/interface/formfieldmodifiedevent.html
---

# FormFieldModifiedEvent

The event object of the `formFieldModified` event of [`FormManager`]({{ site.api }}class/formmanager.html#formfieldmodified).

## Syntax

```typescript
interface FormFieldModifiedEvent {
  formUid: string;
  oldFieldProps: FormField;
  newFieldProps: FormField;
}
```

## Attributes

### formUid

The uid of the form where the field is modified.

### oldFieldProps

The old [`FormField`]({{ site.api }}interface/formfield.html) snapshot of the modified field.

### newFieldProps

The new [`FormField`]({{ site.api }}interface/formfield.html) snapshot of the modified field.

## Related

- [`FormManager.formFieldModified`]({{ site.api }}class/formmanager.html#formfieldmodified)
- [`FormField`]({{ site.api }}interface/formfield.html)
