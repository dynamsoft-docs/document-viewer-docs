---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Polygon Class
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Polygon Class
breadcrumbText: Polygon Class
description: Dynamsoft Document Viewer Documentation API Reference Polygon Class Page
permalink: /api/class/annotation/polygon.html
---

# Polygon Class

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

**Remark**

![AABB-Polygon](/assets/imgs/aabbpolygon.png)

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
getOptions(): PolygonAnnotationOptions;
```

**Return value**

The object of polygon annotation options. Please refer to [`PolygonAnnotationOptions`]({{ site.api }}interface/annotationinterface/polygonannotationoptions.html).

**Code Snippet**

```typescript
// Given that editViewer is an existing instance of EditViewer and a document is currently open.
const pageUid = editViewer.indexToUid(0);
const polygon = Dynamsoft.DDV.annotationManager.createAnnotation(pageUid, "polygon"); // Create a default Polygon annotation instance.
const polygonOptions = polygon.getOptions();
```

## updateOptions() 

Update the annotation options.

**Syntax**

```typescript
updateOptions(polygonAnnotationOptions: PolygonAnnotationOptions): boolean;
```

**Parameters**

`polygonAnnotationOptions`: The new polygon annotation options. Please refer to [`PolygonAnnotationOptions`]({{ site.api }}interface/annotationinterface/polygonannotationoptions.html).

**Return value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
// Given that editViewer is an existing instance of EditViewer and a document is currently open.
const pageUid = editViewer.indexToUid(0);
const polygon = Dynamsoft.DDV.annotationManager.createAnnotation(pageUid, "polygon"); // Create a default Polygon annotation instance.
const polygonOptions = {
    background: "red",
};
polygon.updateOptions(polygonOptions); // Update the background of the polygon to red.
```

**Warning**

 Error Code  | Error Message                                        | API Return Value
--------|-----------------------------------------------------|----------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   | `false`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.  | `false`