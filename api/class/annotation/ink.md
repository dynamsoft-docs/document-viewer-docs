---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Ink Class
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Ink Class
breadcrumbText: Ink Class
description: Dynamsoft Document Viewer Documentation API Reference Ink Class Page
permalink: /api/class/annotation/ink.html
---

# Ink Class

## API Index

| API Name               | Description                                                 |
| ---------------------- | ----------------------------------------------------------- |
| [`uid`](#uid)              | Return the uid of the annotation.                           |
| [`pageUid`](#pageuid)          | Return the uid of the page where the annotation is located. |
| [`creationDate`](#creationdate)     | Return the creation date of the annotation.                 |
| [`modificationDate`](#modificationdate) | Return the modification date of the annotation.             |
| [`getOptions()`](#getoptions)     | Get the annotation options.                                 |
| [`updateOptions()`](#updateoptions)  | Update the annotation options.                              |

## uid

Return the uid of the annotation.

**Syntax**

```typescript
readonly uid: string;
```

{% comment %}
**Remark**

- It will return `''`, if the annotation is be deleted. 
{% endcomment %}

## pageUid

Return the uid of the page where the annotation is located.

**Syntax**

```typescript
readonly pageUid: string;
```

**Remark**
- It will return `''`, if the annotation is be deleted. 

{% comment %}
## aabb

Return Axis-aligned bounding box of the annotation.

**Syntax**

```typescript
readonly aabb: Rect;
```

{% endcomment %}

## creationDate

Return the creation date of the annotation.

**Syntax**

```typescript
readonly creationDate: string;
```

**Remark**

- The string would be `D:YYYYMMDDHHmmSSOHH'mm'`, like `D:20230101085959-08'00'`.

{% comment %}
- It will return `''`, if the annotation is be deleted. 
{% endcomment %}

## modificationDate

Return the modification date of the annotation.

**Syntax**

```typescript
readonly modificationDate: string;
```

**Remark**

- The string would be `D:YYYYMMDDHHmmSSOHH'mm'`, like `D:20230101085959-08'00'`.
- It will return `''`, if the annotation is be deleted.
- If the annotation is created but not be modified after adding, it equals to [`creationDate`](#creationdate). 


## getOptions()

Get the annotation options.

**Syntax**

```typescript
getOptions(): InkAnnotationOptions;
```

**Return value**

The object of ink annotation options. Please refer to [`InkAnnotationOptions`]({{ site.api }}interface/annotationinterface/inkannotationoptions.html).

**Code Snippet**

```typescript
// Given that editViewer is an existing instance of EditViewer and a document is currently open.
const pageUid = editViewer.indexToUid(0);
const ink = Dynamsoft.DDV.annotationManager.createAnnotation(pageUid, "ink"); // Create a default Ink annotation instance.
const inkOptions = ink.getOptions();
```

## updateOptions() 

Update the annotation options.

**Syntax**

```typescript
updateOptions(inkAnnotationOptions: InkAnnotationOptions): boolean;
```

**Parameters**

`inkAnnotationOptions`: The new ink annotation options. Please refer to [`InkAnnotationOptions`]({{ site.api }}interface/annotationinterface/inkannotationoptions.html).

**Return value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
// Given that editViewer is an existing instance of EditViewer and a document is currently open.
const pageUid = editViewer.indexToUid(0);
const ink = Dynamsoft.DDV.annotationManager.createAnnotation(pageUid,  "ink"); // Create a default Ink annotation instance.
const inkOptions = {
    borderColor: "red",
};
ink.updateOptions(inkOptions); // Update the border color of the ink to red.
```

**Warning**

 Error Code  | Error Message                                        | API Return Value
--------|-----------------------------------------------------|----------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   | `false`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.  | `false`