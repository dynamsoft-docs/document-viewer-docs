---
layout: default-layout
title: Dynamsoft Document Viewer DocumentManager
keywords: Dynamsoft Document Viewer, DocumentManager
breadcrumbText: IController
description: Dynamsoft Document Viewer DocumentManager APIs
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---

# DocumentManager

---

## createDocument

Create an empty document.

**Syntax**

```typescript
createDocument(options: CreateDocumentOptions): IVDocument;
```

**Parameters**

`options`：The options set for the created document. Please refer to [CreateDocumentOptions]().

**Return Value**

The [IVDocument]() object of the created document.

**Code Snippet**


---

## getDocument

Get the specified document by its document uid.

**Syntax**

```typescript
getDocument(docUid: string): IVDocument; //?docmentUid
```

**Parameters**

`documentUid`: The document uid of the specified document.

**Return Value**

The [IVDocument]() object of the specified document.

**Code Snippet**


---

## removeDocuments

Remove the specified document(s) by the document uid(s).

**Syntax**

```typescript
removeDocuments(documentUids: string[]): boolean;
```

**Parameters**

`documentUids`: The array of document uids for the specified docunments.

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**


---

## renameDocument

Rename the specified document.

**Syntax**

```typescript
renameDocument(documentUid: string, name: string): boolean;
```

**Parameters**

`documentUid`: The document uid of the specified document.

`name`: The new name of the specified document.

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**


---

## loadSource //? insert

Instert file(s) to the specified document.

**Syntax**

```typescript
loadSource(sources: DDVSource[], docUid: string, index?: number): Promise<string[]>; //?documentUid
```

**Parameters**

`sources`: The array of [DDVSource]() objects for the files to be insterted.

`docmentUid`: The document uid of the specified document.

`index`: Optional. 

**Return Value**

A promise resolving to an array of the page uids for the inserted pages.

**Code Snippet**


---

## updateDocumentPage //? replace

???

**Syntax**

```typescript
updateDocumentPage(pageUid: string, data: UpdatePageData): Promise<boolean>;
```

**Parameters**

`pageUid`: The page uid of the specified page.

`data`: The new page data. Please refer to [UpdatePageData]().

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**



---

## removeDocumentPages

Remove the specified page(s) by the page uid(s).

**Syntax**

```typescript
removeDocumentPages(pageUids: string[]): boolean;
```

**Parameters**

`pageUids`: The array of the page uids for the specified pages.

**Return Value**

`true`: Successfully.

`false`: Failed.

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