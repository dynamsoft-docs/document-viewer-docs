---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - EditViewer Class
keywords: Documentation, Dynamsoft Document Viewer, API Reference, EditViewer Class
breadcrumbText: EditViewer Class
description: Dynamsoft Document Viewer Documentation API Reference EditViewer Class Page
permalink: /api/class/editviewer.html
---

# EditViewer Class

Edit Viewer is used to edit the pages in document, such as, rotating, cropping, filtering, etc. as well as adjust the layout of the display.

## API Index

**Create and Destroy Instances** 

| API Name       | Description                                   |
| ------------ | --------------------------------------------- |
| [`EditViewer()`](#editviewer) | Default constructor of an `EditViewer` instance. |
| [`destroy()`](#destroy)             | Destroy the `EditViewer` instance.                             |

**Viewer Control**

| API Name              | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| [`bindContainer()`](#bindcontainer)     | Bind the viewer to the specified container.                  |
| [`unbindContainer()`](#unbindcontainer) | Unbind the viewer from the specified container.              |
| [`isBoundContainer`](#isboundcontainer) | Return whether the viewer is bound to a container. |
| [`getStyle()`](#getstyle)            | Get the style object of `EditViewer`.                        |
| [`updateStyle()`](#updatestyle)        | Update the style object of `EditViewer`.                     |
| [`getUiConfig()`](#getuiconfig)         | Get current `UiConfig` object.                               |
| [`updateUiConfig()`](#updateuiconfig)     | Update `UiConfig` object.                                    |
| [`show()`](#show)                | Show the viewer.                                             |
| [`hide()`](#hide)                | Hide the viewer.                                             |
| [`isVisible`](#isvisible)        | Return whether the viewer is shown or hidden.      |
| [`toolMode`](#toolmode)              | Specify or return the tool mode of the viewer.     |

**Document and Page Control**

| API Name              | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| [`openDocument()`](#opendocument)        | Open the specified document by document uid.                 |
| [`closeDocument()`](#closedocument)       | Close current document.                                      |
| [`currentDocument`](#currentdocument)   | Return the object of the current document.         |
| [`getPageCount()`](#getpagecount)        | Get the page count in the viewer.                            |
| [`goToPage()`](#gotopage)            | Navigate to the specified page by index.                     |
| [`getCurrentPageIndex()`](#getcurrentpageindex) | Get the index of current page.                               |
| [`getCurrentPageUid()`](#getcurrentpageuid)   | Get the uid of the current page.                             |
| [`indexToUid()`](#indextouid)          | Get the uid of the specified page by its index.                      |
| [`uidToIndex()`](#uidtoindex)          | Get the index of the specified page by its uid. |


**Display Control**

| API Name              | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| [`displayMode`](#displaymode)                 | Specify or return the display mode of the viewer.  |
| [`setParallelScrollCount()`](#setparallelscrollcount)     | Specify the number of pages to scroll in parallel.    |
| [`fitMode`](#fitmode)                     | Specify or return the fit mode of the viewer.      |
| [`zoom`](#zoom)                        | Specify or return zoom ratio.                      |
| [`zoomOrigin`](#zoomorigin)                  | Specify or return the zoom origin of the viewer.   |

**Edit Operations**

| API Name              | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| [`rotate()`](#rotate)              | Rotate the specified pages.                                  |
| [`crop()`](#crop)                | Crop the specified page(s) with the specified rectangle.     |
| [`getCropRect()`](#getcroprect)         | Get the crop rectangular selection.                            |
| [`setCropRect()`](#setcroprect)         | Set a crop rectangular selection on the current page. *This method is only available when [`toolMode`](#toolmode) is `crop` mode.* |
| [`undo()`](#undo)                | Undo the last editing operation.                             |
| [`redo()`](#redo)                | Redo the last undo operation.                                |
| [`saveOperations()`](#saveoperations)      | Save the edit operations in pages to document.               |

**Events**

| API Name | Description                                        |
| -------- | -------------------------------------------------- |
| [`on()`](#on)     | Bind a listener to the specified event.            |
| [`off()`](#off)    | Unbind event listener(s) from the specified event. |

***Integrated Events***

| Event Name          | Description                                                  |
| ------------------- | ------------------------------------------------------------ |
| [`resized`](#resized)             | Triggered when the viewer is resized.                        |
| [`pageRendered`](#pagerendered)        | Triggered when a page has been completely rendered.          |
| [`currentIndexChanged`](#currentindexchanged) | Triggered when currentIndex is changed.                      |
| [`currentPageChanged`](#currentpagechanged)  | Triggered when current page is changed.                      |
| [`displayModeChanged`](#displaymodechanged)  | Triggered when the display mode is changed.                  |
| [`fitModeChanged`](#fitmodechanged)      | Triggered when the fit mode has changed.                     |
| [`zoomChanged`](#zoomchanged)         | Triggered when the zoom ratio has been changed.              |
| [`toolModeChanged`](#toolmodechanged)     | Triggered when the tool mode has changed.                    |
| [`cropRectDrawn`](#croprectdrawn)       | Triggered when a rectangular selection is drawn.               |
| [`cropRectDeleted`](#croprectdeleted)     | Triggered when the rectangular selection is deleted.           |
| [`cropRectModified`](#croprectmodified)    | Triggered when the crop rectangular selection is modified.     |
| [`click`](#click)               | Triggered when click in the viewer's viewing area.           |
| [`dblclick`](#dbclick)            | Triggered when double click in the viewer's viewing area.    |
| [`rightclick`](#rightclick)          | Triggered when right click in the viewer's viewing area.     |



## Create and Destroy Instances

### EditViewer()

Default constructor of an `EditViewer` instance. 

**Syntax**

```typescript
new Dynamsoft.DDV.EditViewer(options?: EditViewerConstructorOptions);
```

**Parameters**

`options`: The constructor options for an `EditViewer` instance. Please refer to [`EditViewerConstructorOptions`]({{ site.api }}interface/editviewerconstructoroptions.html).

**Code Snippet**

```typescript
const editViewer = new Dynamsoft.DDV.EditViewer({
    container: document.getElementById("viewer"),
});

// An IBrowseViewer object will be created at meanwhile. Please refer to Remark part.
const thumbnailObj = editViewer.thumbnail; 
```

**Exception**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.                                            
 -80001 | License string is invalid.                              
 -80002 | *XXX(LicenseModuleName)* module license has expired.                                                               
 -80003 | *XXX(LicenseModuleName)* module license is missing.                         
 -80004 | *XXX(LicenseModuleName)* module license version does not match.                                 
 -80005 | Domain does not match the domain bound to the *XXX(LicenseModuleName)* module license.  
 -80050 | DDV.setConfig has not been set up yet.  
 -80051 | DDV.setConfig has not been completed.   
 -80302 | minZoom value cannot be larger than maxZoom value.                        

**Warning**

 Error Code | Description                                                  
 ---------- | ------------------------------------------------------------ 
 -80316     | ImageFilter needs to be configured by Dynamsoft.DDV.setProcessingHandler to enable the image filter feature.                        

**Remark**

- An `IBrowseViewer` object, `editViewer.thumbnail`, will be created at meanwhile which represents the thumbnail object in edit viewer. Please refer to [`IBrowseViewer`]({{ site.api }}interface/ibrowseviewer.html).

### destroy()

Destroy the `EditViewer` instance.

**Syntax**

```typescript
destroy(): void;
```

**Code Snippet**

```typescript
editViewer.destroy();
```

**Remark**

- The editing operations (rotating, cropping, filtering) in pages will be saved to document automatically when destroy the viewer instance.

**See Also**

[saveOperations](#saveoperations)

## Viewer Control

### bindContainer()

Bind the viewer to the specified container.

**Syntax**

```typescript
bindContainer(container: string | HTMLElement): void;
```

**Parameters**

`container`: The container which is used to show the viewer. Its `id` or `HTMLElement` is acceppted.

**Code Snippet**

```typescript
// Assume there is a container with id "viewercontainer" on the page.
editViewer.bindContainer("viewercontainer");
```

**Exception**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.  
 -80301 | The specified container does not exist. 

**Remark**

- A viewer can only be bound to one container at once. If you bind the viewer to another container when it has been bound to a container, the viewer will be bound to the new container and unbound from the old container automatically. 

### unbindContainer()

Unbind the viewer from the specified container.

**Syntax**

```typescript
unbindContainer(): void;
```

**Code Snippet**

```typescript
editViewer.unbindContainer();
```

### isBoundContainer

Return whether the viewer is bound to a container.

**Syntax**

```typescript
readonly isBoundContainer: boolean;
```

### getStyle()

Get the style object of `EditViewer`.

**Syntax**

```typescript
getStyle(editViewerStyleName: EditViewerStyleName): EditViewerStyle | null;
```

**Parameters**

`editViewerStyleName`: An `EditViewerStyleName` can be one of four types.

```typescript
type EditViewerStyleName = "canvasStyle" | "pageStyle" | "currentPageStyle" |"quadSelectionStyle";
```

**Return values**

The style object. Please refer to [Style Interfaces]({{ site.api }}interface/styleinterface/index.html)..

**Code Snippet**

```typescript
// Get pageStyle object;
const pageStyle = editViewer.getStyle("pageStyle");
```

**Warning**

 Error Code  | Description                                                             | API Return Value
--------|-------------------------------------------------------------------------|----------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.                       | `null`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.                      | `null`
 -80103 | *XXX(API)*: The value for *XXX(ParameterName)* is not supported. | `null`

### updateStyle()

Update the style object of `EditViewer`.

**Syntax**

```typescript
updateStyle(editViewerStyleName: EditViewerStyleName, editViewerStyle: EditViewerStyle): boolean;
```

**Parameters**

`editViewerStyleName`: An `EditViewerStyleName` can be one of three types.

```typescript
type EditViewerStyleName = "canvasStyle" | "pageStyle" | "currentPageStyle" |"quadSelectionStyle";
```

`editViewerStyle`: The style object. Please refer to [Style Interfaces]({{ site.api }}interface/styleinterface/index.html).

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

- First method

    ```typescript
    // Get style object
    const pageStyle = editViewer.getStyle("pageStyle");

    // Modify the style object
    pageStyle.background = "red";
    pageStyle.border = "1px solid green";

    // Update page style
    editViewer.updateStyle("pageStyle", pageStyle);
    ```

- Second method

    ```typescript
    // Update the style object directly
    editViewer.updateStyle("pageStyle", {
        background: "red",
        border: "1px solid green",
    });
    ```

**Warning**

 Error Code  | Description                                                             | API Return Value
--------|-------------------------------------------------------------------------|----------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.                       | `false`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.                      | `false`
 -80103 | *XXX(API)*: The value for *XXX(ParameterName)* is not supported. | `false`


**Remark**

- The updates are independent of whether the viewer is displayed and are updated in real time.

### getUiConfig()

Get current `UiConfig` object.

**Syntax**

```typescript
getUiConfig(): UiConfig;
```

**Return Value**

The [`UiConfig`]({{ site.api }}interface/uiconfig.html) object.

**Code Snippet**

```typescript
const viewerUi = editViewer.getUiConfig();
```

### updateUiConfig()

Update `UiConfig` object.

**Syntax**

```typescript
updateUiConfig(uiConfig: UiConfig): boolean;
```

**Parameters**

`uiConfig`: The [`UiConfig`]({{ site.api }}interface/uiconfig.html) to update.

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
const viewerUi = Dynamsoft.DDV.getDefaultUiConfig("editViewer");
const header = viewerUi.children[0];
header.children.splice(0,0,Dynamsoft.DDV.Elements.Delete); //Add `Delete` element in header.
editViewer.updateUiConfig(viewerUi);
```

**Warning**

 Error Code  | Description                                         | API Return Value
--------|-----------------------------------------------------|----------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   | `false`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.  | `false`
 -80313 | The element *XXX(ElementName)* is not supported in *XXX(ClassName)* class.      | `false`

**Remark**

- The updates are independent of whether the viewer is displayed and are updated in real time.

### show()

Show the viewer.

**Syntax**

```typescript
show(): void;
```

**Code Snippet**

```typescript
editViewer.show();
```

**Remark**

- The viewer is shown automatically when it is created.

### hide()

Hide the viewer.

**Syntax**

```typescript
hide(): void;
```

**Code Snippet**

```typescript
editViewer.hide();
```

### isVisible

Return whether the viewer is shown or hidden.

**Syntax**

```typescript
readonly isVisible: boolean;
```

**Remark**

- The viewer is shown automatically when it is created which means the default value of `isVisible` is `true`.

### toolMode

Specify the tool mode of the viewer.

**Syntax**

```typescript
toolMode: ToolMode; 
```

A `ToolMode` can be one of two types. 

```typescript
type ToolMode = "pan" | "crop";
```

`pan`: The default tool mode.

`crop`: A mode what allows to draw a rectangle by [`setCropRect()`](#setcroprect).

**Code Snippet**

```typescript
editViewer.toolMode = "crop";
```

**Warning**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   
 -80103 | *XXX(API)*: The value for *XXX(ParameterName)* is not supported.

{% comment %} **Remark**

- The default `toolMode` is `pan` mode. {% endcomment %}


## Document and Page Control

### openDocument()

Open the specified document by document uid.

**Syntax**

```typescript
openDocument(docUid: string): void;
```

**Parameters**

`docUid`: The uid of the specified document.

**Code Snippet**

```typescript
// Assume there is a document whose id is "lnn0ll9o124".
editViewer.openDocument("lnn0ll9o124");

// OR
// Assume there is a document object firstDoc.
const docUid = firstDoc.uid;
editViewer.openDocument(docUid);
```

**Exception**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.   
 -80104 | *XXX(API)*: The specified document(s) do not exist.  

**Remark**

- If another ducument is opened when there is a document already opened, the opened document will be closed automatically.

### closeDocument()

Close current document.

**Syntax**

```typescript
closeDocument(): boolean; 
```

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
editViewer.closeDocument();
```

**Warning**

 Error Code  | Description                                         | API Return Value
--------|-----------------------------------------------------|--------------------
 -80304 | No document opened.                                 | `false`

### currentDocument

Return the object of the current document.

**Syntax**

```typescript
readonly currentDocument: IDocument | null;
```

**Code Snippet**

```typescript
const currentDoc = editViewer.currentDocument;
```

**See Also**

[IDocument]({{ site.api }}interface/idocument.html)

### getPageCount()

Get the page count in the viewer.

**Syntax**

```typescript
getPageCount(): number;
```

**Return Value**

The page count.

**Code Snippet**

```typescript
const pageCount = editViewer.getPageCount();
```

**Warning**

 Error Code  | Description                                         | API Return Value
--------|-----------------------------------------------------|--------------------
 -80304 | No document opened.                                 | `-1`

### goToPage()

Navigate to the specified page by index.

**Syntax**

```typescript
goToPage(index: number): number;
```

**Parameters**

`index`: The index of the page which need to navigate to.

**Return Value**

The index of the page which navigate to.

**Code Snippet**

```typescript
// Navigate to page 4.
editViewer.goToPage(3);
```

**Warning**

 Error Code  | Description                                              | API Return Value
--------|----------------------------------------------------------|------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.        | `-1`
 -80101 | *XXX(API)*: *XXX(ParameterName)* is out of range.    | `-1`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.       | `-1`
 -80304 | No document opened.                                      | `-1`
 -80305 | There is no image in the current document.               | `-1`

### getCurrentPageIndex()

Get the index of the current page.

**Syntax**

```typescript
getCurrentPageIndex(): number; 
```

**Return Value**

The index of the current page.

**Code Snippet**

```typescript
const currentIndex = editViewer.getCurrentPageIndex();
```

**Warning**

 Error Code  | Description                                         | API Return Value
--------|-----------------------------------------------------|--------------------
 -80304 | No document opened.                                 | `-1`
 -80305 | There is no image in the current document.          | `-1`

### getCurrentPageUid()

Get the uid of the current page.

**Syntax**

```typescript
getCurrentPageUid(): string;
```

**Return Value**

The uid of the current page.

**Code Snippet**

```typescript
const curPageUid = editViewer.getCurrentPageUid();
```

**Warning**

 Error Code  | Description                                         | API Return Value
--------|-----------------------------------------------------|--------------------
 -80304 | No document opened.                                 | `''`
 -80305 | There is no image in the current document.          | `''`

### indexToUid()

Get the uid of the specified page by its index.

**Syntax**

```typescript
indexToUid(index: number): string;
```

**Parameters**

`index`: The index of the specified page.

**Return Value**

The uid of the page.

**Code Snippet**

```typescript
// Get the first page's uid
const firstPageUid = editViewer.indexToUid(0);
```

**Warning**

 Error Code  | Description                                              | API Return Value
--------|----------------------------------------------------------|------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.        | `''`
 -80101 | *XXX(API)*: *XXX(ParameterName)* is out of range.    | `''`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.       | `''`
 -80304 | No document opened.                                      | `''`
 -80305 | There is no image in the current document.               | `''`

### uidToIndex()

Get the index of the specified page by its uid.

**Syntax**

```typescript
uidToIndex(pageUid: string): number;
```

**Parameters**

`pageUid`: The uid of the specified page.

**Return Value**

The index of the page.

**Code Snippet**

```typescript
const curPageUid = editViewer.getCurrentPageUid();
editViewer.uidToIndex(curPageUid);
```

**Warning**

 Error Code  | Description                                              | API Return Value
--------|----------------------------------------------------------|------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.        | `-1`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.       | `-1`
 -80105 | *XXX(API)*: The specified page(s) do not exist.  | `-1`
 -80304 | No document opened.                                      | `-1`
 -80305 | There is no image in the current document.               | `-1`

## Display Control

### displayMode

Specify or return the display mode of the viewer.

**Syntax**

```typescript
displayMode: DisplayMode; 
```

A `DisplayMode` can be one of two types. 

```typescript
type DisplayMode = "single" | "continuous";
```

`single`: The pages in the viewer is displayed page by page.

`continuous`: The pages in the viewer is displayed continuously.

**Code Snippet**

```typescript
editViewer.displayMode = "single";
```

**Warning**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   
 -80103 | *XXX(API)*: The value for *XXX(ParameterName)* is not supported.

**Remark**

- Default `displayMode` is `continuous`.
- When `displayMode` is `continuous`, the default number of pages to scroll in parallel is 1 and which can be configure by [`setParallelScrollCount`](#setparallelscrollcount).

### setParallelScrollCount()

Specify the number of pages to scroll in parallel.

**Syntax**

```typescript
setParallelScrollCount(count: number): boolean;
```
**Parameters**

`count`: The number of pages to scroll in parallel. The maximum value is 20.

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
// Set three pages to scroll in parallel
editViewer.setParallelScrollCount(3); 
```

**Warning**

 Error Code  | Description                                                  | API Return Value
--------|--------------------------------------------------------------|--------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.            | `false`
 -80101 | *XXX(API)*: *XXX(ParameterName)* is out of range.        | `false`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.           | `false`
 -80308 | EditViewer.setParallelScrollCount: Not available in current displayMode.       | `false`

**Remark**

- The setting will be applied when [`displayMode`](#displaymode) is `continuous` mode.

### fitMode

Specify or return the fit mode of the viewer.

**Syntax**

```typescript
fitMode: FitMode; 
```

A `FitMode` can be one of four types. 

```typescript
type FitMode = "width" | "height" | "window" | "actualSize";
```

`width`: The page is displayed to fit the width.

`height`: The page is displayed to fit the height.

`window`: The page is displayed to fit the window.

`actualSize`: The page is displayed at its actual size, equal to [`zoom`](#zoom) set to 1.

**Code Snippet**

```typescript
editViewer.fitMode = "width";
```

**Warning**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   
 -80103 | *XXX(API)*: The value for *XXX(ParameterName)* is not supported.

**Remark**

- The default `fitMode` is `window`, which means fit window. 
- Since the specified `fitMode` is calculated by zoom ratio, if the zoom ratio which set by `zoom` does not match any of `fitMode`, the page will be displayed in specified zoom ratio and `fitMode` will return `none`.

### zoom

Specify or return zoom ratio.

**Syntax**

```typescript
zoom: number; 
```

**Code Snippet**

```typescript
//Actual size
editViewer.zoom = 1;

//Twice the actual size
editViewer.zoom = 2; 

//10% the actual size
editViewer.zoom = 0.1;
```

**Warning**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   
 -80306 | The value for zoom is larger than maxZoom value.                          
 -80307 | The value for zoom is smaller than minZoom value.

**Remark**

- The interval of available values depends on `minZoom` and `maxZoom` which is set in [EditViewerConfig](#editviewerconfig) when create `EditViewer` object.
- 1 means actual size of the page and equals to `actualSize` in [`fitMode`](#fitmode).
- Return value will be rounded to four decimal places.

### zoomOrigin

Specify or return the zoom origin of the viewer.

**Syntax**

```typescript
zoomOrigin: ZoomOrigin;
```

**Code Snippet**

```typescript
// Set the zoom origin to upper left
const newZoomOrigin = {
    x: "start",
    y: "start",
};

editViewer.zoomOrigin = newZoomOrigin;
```

**Warning**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   

**Remark**

- The default zoomOrigin is center point of the viewer.

**See Also**

[`ZoomOrigin`]({{ site.api }}interface/zoomorigin.html)

## Edit Operations

### rotate()

Rotate the specified pages.

**Syntax**

```typescript
rotate(
    angle: number,
    indices?: number[] 
): boolean; 
```

**Parameters**

`angle`: Specify the angle. Only multiples of 90 degrees are supported. Postive value means clockwise rotation, negative value means counterclockwise rotation.

`indices`: The array of the pages indices which will be rotated. If not set, the current page will be rotated.

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
// Rotate the first and second pages 90 degrees clockwise.
editViewer.rotate(90, [0,1]);

// Rotate current page 90 degrees counterclockwise.
editViewer.rotate(-90);
```

**Warning**

 Error Code  | Description                                                        | API Return Value
--------|-------------------------------------------------------------------------|-------------------    
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.                       | `false`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.                      | `false`
 -80103 | *XXX(API)*: The value for *XXX(ParameterName)* is not supported. | `false`
 -80304 | No document opened.                                                     | `false`
 -80305 | There is no image in the current document.                              | `false`

### crop()

Crop the specified page(s) with the specified rectangle.

**Syntax**

```typescript
crop(
    rect: Rect, 
    indices?: number[]
): boolean; 
```
**Parameters**

`rect`: Specify the rectangle. Please refer to [`Rect`]({{ site.api }}interface/rect.html).

`indices`: Specify the indices of the pages to be cropped. If not set, the current page will be cropped.

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
const rect = {
    left: 100,
    top: 100,
    width: 200,
    height: 200,
};

editViewer.crop(rect, [0]); // Crop the first page
```

**Warning**

 Error Code  | Description                                           | API Return Value
--------|------------------------------------------------------------|-------------------      
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.          | `false`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.         | `false`
 -80304 | No document opened.                                        | `false`
 -80305 | There is no image in the current document.                 | `false`
 -80309 | The specified rect exceeds the bounds of page index *X(IndexNum)*.  | `false`

**Remark**

If one of the points of the rectangle is out of page range, crop operation does not take effect in this page and report warning.

### getCropRect()

Get the crop rectangular selection.

**Syntax**

```typescript
getCropRect(): Rect | null;
```

**Return Value**

The rectangular selection. Please refer to [`Rect`]({{ site.api }}interface/rect.html).

**Code Snippet**

```typescript
editViewer.getCropRect();
```

**Warning**

 Error Code  | Description                                               | API Return Value
--------|-----------------------------------------------------------|---------------------
-80304  | No document opened.                                       | `null`

**Remark**

- If there is no crop rectangular selection, returns `null`.

### setCropRect()

> *This method is only available when [`toolMode`](#toolmode) is `crop` mode.*

Set a crop rectangular selection on the current page.

**Syntax**

```typescript
setCropRect(rect: Rect): boolean;
```

**Parameters**

`rect`: Specify the rectangular selection. Please refer to [`Rect`]({{ site.api }}interface/rect.html).

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
editViewer.toolMode = "crop"; // Set toolMode to "crop"

const rect = {
    left: 100,
    top: 100,
    width: 200,
    height: 200,
};

editViewer.setCropRect(rect); 
```

**Warning**

 Error Code  | Description                                               | API Return Value
--------|-----------------------------------------------------------|-------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.         | `false`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.        | `false`
 -80304 | No document opened.                                       | `false`
 -80305 | There is no image in the current document.                | `false`
 -80309 | The specified rect exceeds the bounds of page index *X(IndexNum)*. | `false`
 -80314 | *XXX(API)*: Not available in current toolMode.    | `false`

**Remark**

- In the viewer, only one rectangular selection can exist on the page at a time, which means if there is a rectangular selection existed when a new selection is drawn, the old one will be clear automatically.
- When [`toolMode`](#toolmode) is set to `pan`, the drawn rectangular selection will be clear.

### undo()

> *This method takes effect only for [crop](#crop), [rotate](#rotate) operations.*

Undo the last editing operation.

**Syntax**

```typescript
undo(): boolean;
```

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
editViewer.undo();
```

**Warning**

 Error Code  | Description                                         | API Return Value
--------|-----------------------------------------------------|-----------------
 -80304 | No document opened.                                 | `false`
 -80310 | No operations to undo.                              | `false`

### redo()

> *This method takes effect only for [crop](#crop), [rotate](#rotate) operations.*

Redo the last undo operation.

**Syntax**

```typescript
redo(): boolean;
```

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
editViewer.redo();
```

**Warning**

 Error Code  | Description                                         | API Return Value
--------|-----------------------------------------------------|-----------------
 -80304 | No document opened.                                 | `false`
 -80311 | No operations to redo.                              | `false`

### saveOperations()

> *This method takes effect only for [crop](#crop), [rotate](#rotate) & filter(which is operated by using UI Element) operations.*

Save the edit operations in pages to document.

**Syntax**

```typescript
saveOperations(): boolean;
```

**Return Value**

`true`: Successfully.

`false`: Failed.

**Code Snippet**

```typescript
editViewer.saveOperations();
```

**Warning**

 Error Code  | Description                                         | API Return Value
--------|-----------------------------------------------------|-----------------
 -80304 | No document opened.                                 | `false`

## Events

### on()

Bind a listener to the specified event. 

**Syntax**

```typescript
on(eventName: EventName, listener:(event:EventObject)=>void): void;
```

**Parameters**

`eventName`: Specify the event name. It can be [an integrated event name](#integrated-events) or a custom event name configured through [`UiConfig`-`events`]({{ site.api }}interface/uiconfig.html#events).

`listener`: Specify the listener.

**Code Snippet**

```typescript
// Bind a listener to the integrated event resized.
const eventFunc = (e)=>{
    console.log(e);
    console.log(e.oldWidth);
    console.log(e.newWidth);
};

editViewer.on("resized", eventFunc);
```

**Warning**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.  


### off()

Unbind event listener(s) from the specified event. 

**Syntax**

```typescript
off(eventName: EventName, listener?:(event:EventObject)=>void): void;
```

**Parameters**

`eventName`: Specify the event name. It can be [an integrated event name](#integrated-events) or a custom event name configured through [`UiConfig`-`events`]({{ site.api }}interface/uiconfig.html#events).

`listener`: Specify the listener. If no listener is specified, unbind all event listeners from the specified event.

**Code Snippet**

```typescript
const eventFunc = (e)=>{
    console.log(e);
    console.log(e.oldWidth);
    console.log(e.newWidth);
};

editViewer.on("resized", eventFunc);

// Unbind the specified event listener.
editViewer.off("resized", eventFunc);
```

**Warning**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.  

### Integrated Events

#### resized

Triggered when the viewer is resized.

**Callback**

`ResizedEvent`: An EventObject.

**Attributes**

`oldWidth`: The old width of the viewer.

`oldHeight`: The old height of the viewer.

`newWidth`: The new width of the viewer.

`newHeight`: The new height of the viewer.

#### pageRendered

Triggered when a page has been completely rendered. We only render the pages that are visible on the screen, so this event won't get fired for every page in the document at once. This event will get called when the user scrolls up and down the document, or when a page is zoomed or rotated, or anything else that makes it rerender.

**Callback**

`PageRenderedEvent`: An EventObject.

**Attributes**

`index`: The index of the rendered page.

`pageUid`: The pageUid of the rendered page.

#### currentIndexChanged

Triggered when currentIndex is changed.

**Callback**  

`CurrentindexChangedEvent`: An EventObject.

**Attributes**

`oldIndex`: The old current index.

`newIndex`: The new current index. If there is no index in the viewer, return `-1`.

#### currentPageChanged

Triggered when current page is changed.

**Callback**

`CurrentPageChangedEvent`: An EventObject.

**Attributes**

`oldPageUid`: The uid of the page which is old current index. If the old page is removed, return `''`.

`newPageUid`: The uid of the page which is new current index. If there is no index in the viewer, return `''`.

#### displayModeChanged

Triggered when the display mode is changed.

**Callback**

`DisplayModeChangedEvent`: An EventObject.

**Attributes**

`oldDisplayMode`: The old display mode.

`newDisplayMode`: The new display mode.

#### fitModeChanged

Triggered when the fit mode has changed.

**Callback**

`FitModeChangedEvent`: An EventObject.

**Attributes**

`oldFitMode`: The old fit mode.

`newFitmode`: The new fit mode.

#### zoomChanged

Triggered when the zoom ratio has been changed.

**Callback**

`ZoomChangedEvent`: An EventObject.

**Attributes**

`oldZoomRatio`: The old zoom ratio.

`newZoomRatio`: The new zoom ratio.

#### toolModeChanged

Triggered when the tool mode has changed.

**Callback**

`ToolModeChangedEvent`: An EventObject.

**Attributes**

`oldToolMode`: The old tool mode.

`newToolMode`: The new tool mode.

#### cropRectDrawn

Triggered when a rectangular selection is drawn.

**Callback**

`CropRectDrawnEvent`: An EventObject.

**Attributes**

`rect`: The drawn rectangle.

#### cropRectDeleted

Triggered when the rectangular selection is deleted.

**Callback**

`CropRectDeletedEvent`: An EventObject.

**Attributes**

`rect`: The deleted rectangle.

#### cropRectModified

Triggered when the crop rectangular selection is modified.

**Callback**

`CropRectModifiedEvent`: An EventObject.

**Attributes**

`oldRect`: The old rectangle.

`newRect`: The new rectangle.

#### Mouse Events

##### click

Triggered when click in the viewer's viewing area. On mobile device, triggered when tap in the viewer's viewing area.

##### dblclick

Triggered when double click in the viewer's viewing area.

##### rightclick

Triggered when right click in the viewer's viewing area. On mobile device, triggered when long-tap in the viewer's viewing area.


**Callback for mouse events**

 `VPointerEvent`: An EventObject.

**Attributes**

`index`: The page index.

`pageUid`: The page uid.

`imageX`: The relative x-coordinate of the click pointer on the image.

`imageY`: The relative y-coordinate of the click pointer on the image.

`canvasX`: The relative x-coordinate of the click pointer on the canvas.

`canvasY`: The relative x-coordinate of the click pointer on the canvas.

`nativeEvent`: [`PointerEvent`](https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent)
