---
layout: default-layout
title: Dynamsoft Document Viewer - Viewer Class
keywords: Dynamsoft Document Viewer, Viewer Class
breadcrumbText: Viewer Class
description: Dynamsoft Document Viewer - Viewer Class APIs
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---

# Viewer Class


## destroy

Destroy the Viewer instance.

**Syntax**

```typescript
destroy(): void;
```

**Parameters**

None.

**Return Value**

None.

**Code Snippet**



---

## updateViewConfig

Update the cofigurations of the viewer.

**Syntax**

```typescript
updateViewConfig(config: ViewerConfig): void;
```

**Parameters**

`config`: The config object contains one or more properties of [ViewerConfig]({{ site.javascript_api }}viewerconfig.html).

**Return Value**

None.

**Code Snippet**



---

## bindContainer

Bind the UI of this Viewer to the container element's children.

**Syntax**

```typescript
bindContainer(containerEl: HTMLElement): void;
```

**Parameters**

`containerEl`: Please refer to [HTMLElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement).

**Return Value**

None.

**Code Snippet**




---

## resize

Resize the UI of the viewer when the outside size of the viewer is changed. //? responsive

**Syntax**

```typescript
resize(): void;
```

**Parameters**

None.

**Return Value**

None.

**Code Snippet**




---

## setCropBox

Set a crop box at the specified location on the current page.

**Syntax**

```typescript
setCropBox(rect: CropBoxRect, keepExisted?: boolean): boolean;
```

**Parameters**

`rect`: The rectangle of the crop box. Please refer to [CropBoxRect]()

`keepExisted`: Whether to keep the existed crop box(es).

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**




---

## setFreeCropBox

Set a crop box on the current page.  //?

**Syntax**

```typescript
setFreeCropBox(area: Quadrangle): boolean;
```

**Parameters**

`area`: Quadrangle //?

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**



---

## clearCropBox

Clear all crop boxes.

**Syntax**

```typescript
clearCropBox(): void;
```

**Parameters**

None.

**Return Value**

None.

**Code Snippet**








<!--
---

## 



**Syntax**

```typescript

```

**Parameters**



**Return Value**



**Code Snippet**




-->