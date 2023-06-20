---
layout: default-layout
title: Dynamsoft Document Viewer IController
keywords: Dynamsoft Document Viewer, IController
breadcrumbText: IController
description: Dynamsoft Document Viewer IController APIs
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---

# IController

**Methods**

## destroy

Destroy the Controller instance.

**Syntax**

```typescript
destroy(): void;
```

**Parameters**

None。

**Return Value**

None.

**Code Snippet**

---

## openDocument

Open the specified document.

**Syntax**

```typescript
openDocument(document: IVDocument): void;
```

**Parameters**

`document`: Specify the document. Please refer to [IVDocument]().

**Return Value**

None.

**Code Snippet**


---

## indexToUid

Convert index of the page to its uid.

**Syntax**

```typescript
indexToUid(index: number): string;
```

**Parameters**

`index`: The index of the page.

**Return Value**

The uid of the page.

**Code Snippet**


---

## uidToIndex

Convert uid of the page to its index.

**Syntax**

```typescript
uidToIndex(uid: string): number;
```

**Parameters**

`uid`: The uid of the page.

**Return Value**

The index of the page.

**Code Snippet**


---

## getCurrentPageIndex

Get the index of current page.

**Syntax**

```typescript
getCurrentPageIndex(): number;
```

**Parameters**

None.

**Return Value**

The index of current page.

**Code Snippet**


---

## getCurrentPageUid

Get the uid of current page.

**Syntax**

```typescript
getCurrentPageUid(): string;
```

**Parameters**

None.

**Return Value**

The uid of current page.

**Code Snippet**



---

## selectAllPages

Select all pages.

**Syntax**

```typescript
selectAllPages(): void;
```

**Parameters**

None.

**Return Value**

None.

**Code Snippet**



---

## selectPagesByIndexes

Select the pages by their indexes.

**Syntax**

```typescript
selectPagesByIndexes(indexes: number[]): void;
```

**Parameters**

`indexes`: The array of indexes of the selected pages.

**Return Value**

None.

**Code Snippet**



---

## gotoPage

Navigate to the specified page directly.

**Syntax**

```typescript
gotoPage(index: number): number;
```

**Parameters**

`index`: The index of the specified page.

**Return Value**

The index number of the specified page. If the index parameter is out of range, the return value is -1.

**Code Snippet**



---

## movePage

Change the position of a page.

**Syntax**

```typescript
movePage(fromIndex: number, toIndex: number): boolean;
```

**Parameters**

`fromIndex`: Specify the original position of the page by index.

`toIndex`: Specify the target position of the page by index.

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**



---

## switchPage

Exchange the positions of two pages.

**Syntax**

```typescript
switchPage(oneIndex: number, anotherIndex: number): boolean;
```

**Parameters**

`oneIndex`: Specify one page by its index.

`anotherIndex`: Specify another page by its index.

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**




---

## removePages

Remove the specified pages.

**Syntax**

```typescript
removePages(index: number): boolean;
removePages(indexes: number[]): boolean;

removePages(index: number|indexes: number[]): boolean;
```

**Parameters**

`index`: The index of the specified page.

`indexes`: The array of indexes of the specified pages.

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**




---

## removeAllPages

Remove all pages.

**Syntax**

```typescript
removeAllPages(): boolean;
```

**Parameters**

None.

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**




---

## activateTab

Activate the specified tab. 

**Syntax**

```typescript
activateTab(tabUid: string): void;
activateTab(tab: ITab): void;

activateTab(tabUid: string|tab: ITab): void;
```

**Parameters**

`tabUid`: The uid of the specified tab.

`tab`: The specified tab. Please refer to [ITab]().

**Return Value**

None.

**Code Snippet**




---

## closeTab

Close the specified tab.

**Syntax**

```typescript
closeTab(tabUid: string): void;
closeTab(tab: ITab): void;

closeTab(tabUid: string|tab: ITab): void;
```

**Parameters**

`tabUid`: The uid of the specified tab.

`tab`: The specified tab. Please refer to [ITab]().

**Return Value**

None.

**Code Snippet**



---

## getActivatedTab

Get [ITab]() object of the avtivated tab.

**Syntax**

```typescript
getActivatedTab(): ITab;
```

**Parameters**

None.

**Return Value**

The [ITab]() object of the avtivated tab.

**Code Snippet**




---

## 

Get [ITab]() objects of all tabs.

**Syntax**

```typescript
getAllTabs(): ITab[];
```

**Parameters**

None.

**Return Value**

The array of the [ITab]() objects of all tabs.

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