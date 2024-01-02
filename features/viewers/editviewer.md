---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer Features - Edit Viewer
keywords: Documentation, Dynamsoft Document Viewer, Features, Edit Viewer
breadcrumbText: Edit Viewer
description: Dynamsoft Document Viewer Documentation Features, Edit Viewer
permalink: /features/viewers/editviewer.html
---

# Edit Viewer

Edit Viewer is used to edit the pages in document, such as, rotating, cropping, filtering, etc. as well as adjust the layout of the display.

- [Default user interface]({{ site.ui }}default_elements.html#edit-viewer)
- [Default viewer configuration]({{ site.viewer }}viewerconfig.html#edit-viewer)

```typescript
const editViewer = new Dynamsoft.DDV.EditViewer({
    container: document.getElementById("viewer")
});
editViewer.openDocument("docUid"); // Open a document which has pages
```

## Edit pages

### Rotate

The method [`rotate()`]({{ site.api }}class/editviewer.html#rotate) is used to rotate the pages in the edit viewer.

**Use cases**

- Rotate the current page 90 degrees counterclockwise.

    ```typescript
    editViewer.rotate(-90);
    ```

- Rotate all pages 90 degrees clockwise.

    ```typescript
    const pageCount = editViewer.getPageCount();
    editViewer.rotate(90,[...Array(pageCount).keys()]);
    ```

### Crop 

The method [`crop()`]({{ site.api }}class/editviewer.html#crop) is used to crop the pages. If the rectangle selection is exceeds the bounds of the page, it won't take effect.

**Use cases**

- Crop the current page with the specified rectangle.

    ```typescript
    const rect = {
        left: 100,
        top: 100,
        width: 200,
        height: 200,
    };
    editViewer.crop(rect); 
    ```

- Crop all pages with the specfied rectangle.

    ```typescript
    const pageCount = editViewer.getPageCount(); 
    const rect = {
        left: 100,
        top: 100,
        width: 200,
        height: 200,
    };
    editViewer.crop(rect,[...Array(pageCount).keys()]); 
    ```

### Undo/redo

Rotating and cropping operations can be undone and redone in the edit viewer by using [`undo()`]({{ site.api }}class/editviewer.html#undo) and [`redo()`]({{ site.api }}class/editviewer.html#redo).

```typescript
// Undo
editViewer.undo();

// Redo
editViewer.redo();
```

## Adjust display layout of pages

### Zoom in/out

To zoom in or zoom out, the property [`zoom`]({{ site.api }}class/editviewer.html#zoom) can help.

```typescript
//Actual size
editViewer.zoom = 1;

//Twice the actual size
editViewer.zoom = 2; 

//10% the actual size
editViewer.zoom = 0.1;
```

### Display mode

The pages can be displayed in continous scrolling mode or page by page mode. [`displayMode`]({{ site.api }}class/editviewer.html#displaymode) is used to switch the different display modes.

```typescript
// Display the pages page by page
editViewer.displayMode = "single";

// Display the pages continuously
editViewer.displayMode = "continuous";
```

### Fit mode

[`fitMode`]({{ site.api }}class/editviewer.html#fitmode) can help to change the fit mode of the viewer.

```typescript
// Fit Width
editViewer.fitMode = "width";

// Fit Height
editViewer.fitMode = "height";

// Fit Window
editViewer.fitMode = "window";

// Actual Size
editViewer.fitMode = "actualSize";
```

## Built-in Thumbnail

Each edit viewer has a built-in thumbnail, as you may know, an [`IBrowseViewer`]({{ site.api }}interface/ibrowseviewer.html) object represents the thumbnail object in edit viewer. When you create an `editViewer` instance, the `editViewer.thumbnail` object will be generated at meanwhile.

**Use case**

Show/hide thumbnail.

```typescript
// Show thumbnail
editViewer.thumbnail.show();

// Hide thumbnail
editViewer.thumbnail.hide();
```