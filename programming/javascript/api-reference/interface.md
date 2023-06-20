---
layout: default-layout
title: Dynamsoft Document Viewer Interface
keywords: Dynamsoft Document Viewer, Interface
breadcrumbText: Interface
description: Dynamsoft Document Viewer Interface
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---

# Interface

## IVDocument



```typescript
interface IVDocument {
	uid: string;
	path: string;
	name: string;
	type: VDocumentType;
}
```

**Attributes**

 Attribute | Type                | Description               
-----------|---------------------|---------------------------
 uid       | string              | The uid of the document.   //?documentUid
 path      | string              | The path of the document. 
 name      | string              | The name of the document. 
 type      | [`VDocumentType`]() | The type of the document. 

---

## ITab



```typescript
interface ITab {
	uid: string;
	name: string;
	document: IVDocument;
	isModified: boolean;
}
```

**Attributes**

 Attribute | Type                | Description               
-----------|---------------------|---------------------------
 uid       | string              | The uid of the tab.    //?tabUid
 name      | string              | The name of the tab. 
 document  | [`IVDocument`]()    | The document which is on the tab.
 isModified| boolean             |  ???

---

## CreateDocumentOptions



```typescript
interface CreateDocumentOptions {
	name: string;
	tags?: string[];
}
```

**Attributes**

 Attribute | Type                | Description               
-----------|---------------------|---------------------------
 name      | string              | The name of the created document.  
 tags      | string[]            | The tags of the created document.


---

## DDVSource



```typescript
interface DDVSource {
	file: Blob;
	mime: SourceMIME;
}
```

**Attributes**

 Attribute | Type                | Description               
-----------|---------------------|---------------------------
 file      | Blob                | The Blob of the source file.  
 mime      | [`SourceMIME`]()      | The MIME type of the source file.


---

## UpdatePageData



```typescript
interface UpdatePageData {
	raw?: Blob;
	original?: Blob;
	display?: Blob;
	thumbnail?: Blob;
}
```

**Attributes**

 Attribute | Type                | Description               
-----------|---------------------|---------------------------
 raw       | Blob                | The raw data  
 original  | Blob                | ??
 display   | Blob                |  
 thumbnail | Blob                | 

---

## CropBoxRect



```typescript
interface CropBoxRect {
	left: number;
	top: number;
	width: number;
	height: number;
}
```

**Attributes**

 Attribute | Type                | Description               
-----------|---------------------|---------------------------
 left      | number              | The x-coordinate of the upper-left corner of the area. 
 top       | number              | The y-coordinate of the upper-left corner of the area.
 width     | number              | The width of the crop box.
 height    | number              | The height of the crop box.

---



<!--
## 



```typescript

```

**Attributes**

 Attribute | Type                | Description               
-----------|---------------------|---------------------------
 uid       | string              | The uid of the document.  
 path      | string              | The path of the document. 
 name      | string              | The name of the document. 
 type      | [`VDocumentType`]() | The type of the document. 

---

-->