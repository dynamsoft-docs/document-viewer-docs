---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Line Class
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Line Class
breadcrumbText: Line Class
description: Dynamsoft Document Viewer Documentation API Reference Line Class Page
permalink: /api/class/annotation/line.html
---

# Line Class

## API Index

| API Name                                | Description                                                                                 |
| --------------------------------------- | ------------------------------------------------------------------------------------------- |
| [`uid`](#uid)                           | Return the uid of the annotation.                                                           |
| [`pageUid`](#pageuid)                   | Return the uid of the page where the annotation is located.                                 |
| [`creationDate`](#creationdate)         | Return the creation date of the annotation.                                                 |
| [`flattened`](#flattened)               | Flattens the annotation onto the image layer, or inspect if the annotation is flattened. |
| [`modificationDate`](#modificationdate) | Return the modification date of the annotation.                                             |
| [`getOptions()`](#getoptions)           | Get the annotation options.                                                                 |
| [`updateOptions()`](#updateoptions)     | Update the annotation options.                                                              |

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

## flattened

Flattens the annotation onto the image layer, or inspect if the annotation is flattened.

**Syntax**

```typescript
flattened: boolean;
```

**Remark**

Flattened annotations move below all unflattened annotations on the page, and are stacked amongst themselves accordingly.

Flattened annotations become part of the page layer upon file export and cease to be annotations.

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
getOptions(): LineAnnotationOptions;
```

**Return value**

The object of line annotation options. Please refer to [`LineAnnotationOptions`]({{ site.api }}interface/annotationinterface/lineannotationoptions.html).

**Code Snippet**

```typescript
// Given that editViewer is an existing instance of EditViewer and a document is currently open.
const pageUid = editViewer.indexToUid(0);
const line = Dynamsoft.DDV.annotationManager.createAnnotation(pageUid,  "line"); // Create a default Line annotation instance.
const lineOptions = line.getOptions();
```

## updateOptions() 

Update the annotation options.

**Syntax**

```typescript
updateOptions(lineAnnotationOptions: LineAnnotationOptions): boolean;
```

**Parameters**

`lineAnnotationOptions`: The new line annotation options. Please refer to [`LineAnnotationOptions`]({{ site.api }}interface/annotationinterface/lineannotationoptions.html).

**Return value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
// Given that editViewer is an existing instance of EditViewer and a document is currently open.
const pageUid = editViewer.indexToUid(0);
const line = Dynamsoft.DDV.annotationManager.createAnnotation(pageUid, "line"); // Create a default Line annotation instance.
const lineOptions = {
    lineEnding: {
        end: Dynamsoft.DDV.EnumLineEnding.OPEN,
    },
};
line.updateOptions(lineOptions); // Update the line ending of the line to open.
```

**Warning**

 Error Code  | Error Message                                        | API Return Value
--------|-----------------------------------------------------|----------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   | `false`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.  | `false`
