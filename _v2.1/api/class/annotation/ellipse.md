---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Ellipse Class
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Ellipse Class
breadcrumbText: Ellipse Class
description: Dynamsoft Document Viewer Documentation API Reference Ellipse Class Page
---

# Ellipse Class


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

- It will return `''`, if the annotation is deleted. 
{% endcomment %}

## pageUid

Return the uid of the page where the annotation is located.

**Syntax**

```typescript
readonly pageUid: string;
```

**Remark**

- It will return `''`, if the annotation is deleted. 

{% comment %}
## aabb

Return Axis-aligned bounding box of the annotation.

**Syntax**

```typescript
readonly aabb: Rect;
```

**Remark**

![AABB-Ellipse](/assets/imgs/aabbellipse.png)

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
- It will return `''`, if the annotation is deleted. 
{% endcomment %}

## flattened

Flattens the annotation onto the image layer, or inspect if the annotation is flattened.

**Syntax**

```typescript
flattened: boolean;   //Default value is `false`.
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
- It will return `''`, if the annotation is deleted.
- If the annotation is created but not be modified after adding, it equals to [`creationDate`](#creationdate). 

## getOptions()

Get the annotation options.

**Syntax**

```typescript
getOptions(): EllipseAnnotationOptions;
```

**Return value**

The object of ellipse annotation options. Please refer to [`EllipseAnnotationOptions`]({{ site.api }}interface/annotationinterface/ellipseannotationoptions.html).

**Code Snippet**

```typescript
// Given that editViewer is an existing instance of EditViewer and a document is currently open.
const pageUid = editViewer.indexToUid(0);
const ellipse = Dynamsoft.DDV.annotationManager.createAnnotation(pageUid, "ellipse"); // Create a default Ellipse annotation instance.
const ellipseOptions = ellipse.getOptions();
```

## updateOptions() 

Update the annotation options.

**Syntax**

```typescript
updateOptions(ellipseAnnotationOptions: EllipseAnnotationOptions): boolean;
```

**Parameters**

`ellipseAnnotationOptions`: The new ellipse annotation options. Please refer to [`EllipseAnnotationOptions`]({{ site.api }}interface/annotationinterface/ellipseannotationoptions.html).

**Return value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
// Given that editViewer is an existing instance of EditViewer and a document is currently open.
const pageUid = editViewer.indexToUid(0);
const ellipse = Dynamsoft.DDV.annotationManager.createAnnotation(pageUid, "ellipse"); // Create a default Ellipse annotation instance.
const ellipseOptions = {
    background: "red",
};
ellipse.updateOptions(ellipseOptions); // Update the background of the ellipse to red.
```

**Warning**

 Error Code  | Error Message                                        | API Return Value
--------|-----------------------------------------------------|----------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   | `false`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.  | `false`
