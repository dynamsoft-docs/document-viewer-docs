---
layout: default-layout
needAutoGenerateSidebar: true
title: Dynamic Web TWAIN SDK Remote Scan API Reference - Viewer APIs
keywords: Dynamic Web TWAIN, Documentation, Remote Scan, API Reference, Viewer APIs
breadcrumbText: Viewer
description: Dynamic Web TWAIN SDK Remote Scan Documentation API Reference Viewer APIs Page
permalink: /api/viewer.html
---

# {RemoteScanObject}.Viewer

**All the APIs listed on [local viewer](https://www.dynamsoft.com/web-twain/docs/info/api/WebTwain_Viewer.html) are supported.**

**Additional supported**

## crop

Crop the specified image using the specified rectangle.

**Syntax**

```typescript
crop(index: number,rect: rect): promise<void>;
```

**Parameters**

`index`: The index of the current page.

`rect`: Some attribute values of the selected area. Please refer to [rect]({{site.api}}Interfaces.html#rect).

---

## rotate

Rotate the specified image by the specified angle.

**Syntax**

```typescript
rotate(index: number, angle: number, keepSize: boolean): promise<void>;
```

**Parameters**

`index`: Specify the image.

`angle`: Specify the angle.

`keepSize`: Whether to keep the original size.

---

## errorCode

Return the error code.

**Syntax**

```typescript
readonly errorCode: number;
```

---

## errorString

Return the error string.

**Syntax**

```typescript
readonly errorString: string;
```

