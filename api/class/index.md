---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Class
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Class
breadcrumbText: EditViewer Class
description: Dynamsoft Document Viewer Documentation API Reference Class Index Page
permalink: /api/class/index.html
---


# DDV Class

Dynamsoft Document Viewer Javascript library comes with six primary classes:

<div class="multi-panel-switching-prefix"></div>

- [DocumentManager](#documentmanager)
- [EditViewer](#editviewer)
- [CaptureViewer](#captureviewer)
- [PerspectiveViewer](#perspectiveviewer)
- [BrowseViewer](#browseviewer)
- [CustomViewer](#customviewer)

<div class="multi-panel-start"></div>

## DocumentManager

The `Dynamsoft.DDV.documentManager` instance will be created automatically as soon as DDV is initialized.

### Methods

| API Name              | Description                                               |
| --------------------- | --------------------------------------------------------- |
| createDocument()      | Create an empty document.                                 |
| deleteDocuments()     | Delete the specified document(s) by the document uid(s).  |
| deleteAllDocuments()  | Delete all documents.                                     |
| getDocument()         | Get the specified document object with the document uid.  |
| getAllDocuments()     | Get all documents' objects.                               |
| mergeDocuments()      | Merge specified documents to a new document.              |
| copyPagesToDocument() | Copy pages from a specified document to another document. |
| movePagesToDocument() | Move pages from a specified document to another document. |

### Events

| API Name | Description                                        |
| -------- | -------------------------------------------------- |
| on()     | Bind a listener to the specified event.            |
| off()    | Unbind event listener(s) from the specified event. |

| Event Name      | Description                               |
| --------------- | ----------------------------------------- |
| documentCreated | Triggered when a new document is created. |
| documentDeleted | Triggered when a document is deleted.     |
| pagesAdded      | Triggered when the page(s) are added.     |
| pagesDeleted    | Triggered when the page(s) are deleted.   |

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

## EditViewer

### Constructor 

| Method       | Description                                   |
| ------------ | --------------------------------------------- |
| EditViewer() | Default constructor of a `EditViewer` object. |

### Methods

| API Name              | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| destroy()             | Destroy the `EditViewer` object.                             |
| bindContainer()       | Bind the viewer to the specified container.                  |
| unbindContainer()     | Unbind the viewer from the specified container.              |
| getStyle()            | Get the style object of `EditViewer`.                        |
| updateStyle()         | Update the style object of `EditViewer`.                     |
| getUiConfig()         | Get current `UiConfig` object.                               |
| updateUiConfig()      | Update `UiConfig` object.                                    |
| show()                | Show the viewer.                                             |
| hide()                | Hide the viewer.                                             |
| openDocument()        | Open the specified document by document uid.                 |
| closeDocument()       | Close current document.                                      |
| getPageCount()        | Get the page count in the viewer.                            |
| goToPage()            | Navigate to the specified page by index.                     |
| getCurrentPageIndex() | Get the index of current page.                               |
| getCurrentPageUid()   | Get the uid of the current page.                             |
| indexToUid()          | Get the uid of the page by the index.                        |
| uidToIndex()          | Get the index of the page represented by the uid in the activated document. |
| setRowAndColumn()     |                                                              |
| rotate()              | Rotate the specified pages.                                  |
| crop()                | Crop the specified page(s) with the specified rectangle.     |
| setCropRect()         | Set a crop rectangle selection on the current page. *This method is only available when [`toolMode`]() is crop mode.* |
| getCropRect()         | Get the crop rectangle selection.                            |
| undo()                | Undo the last editing operation.                             |
| redo()                | Redo the last undo operation.                                |
| saveOperations()      | Save the edit operations in pages to document.               |

### Properties

| API Name                    | Description                                        |
| --------------------------- | -------------------------------------------------- |
| `readonly` isBoundContainer | Return whether the viewer is bound to a container. |
| `readonly` isVisible        | Return whether the viewer is shown or hidden.      |
| `readonly` currentDocument  | Return the object of the current document.         |
| toolMode                    | Specify or return the tool mode of the viewer.     |
| displayMode                 | Specify or return the display mode of the viewer.  |
| fitMode                     | Specify or return the fit mode of the viewer.      |
| zoom                        | Specify or return zoom ratio.                      |
| zoomOrigin                  | Specify or return the zoom origin of the viewer.   |

### Events

| API Name | Description                                        |
| -------- | -------------------------------------------------- |
| on()     | Bind a listener to the specified event.            |
| off()    | Unbind event listener(s) from the specified event. |

| Event Name          | Description                                                  |
| ------------------- | ------------------------------------------------------------ |
| resized             | Triggered when the viewer is resized.                        |
| pageRendered        | Triggered when a page has been completely rendered.          |
| currentIndexChanged | Triggered when currentIndex is changed.                      |
| currentPageChanged  | Triggered when current page is changed.                      |
| displayModeChanged  | Triggered when the display mode is changed.                  |
| fitModeChanged      | Triggered when the fit mode has changed.                     |
| zoomChanged         | Triggered when the zoom ratio has been changed.              |
| toolModeChanged     | Triggered when the tool mode has changed.                    |
| cropRectDrawn       | Triggered when a rectangle selection is drawn.               |
| cropRectDeleted     | Triggered when the rectangle selection is deleted.           |
| cropRectModified    | Triggered when the crop rectangle selection is modified.     |
| click               | Triggered when click in the viewer's viewing area.           |
| dblclick            | Triggered when double click in the viewer's viewing area.    |
| rightclick          | Triggered when right click in the viewer's viewing area.     |
| tap                 | Triggered on mobile when tap in the viewer's viewing area.   |
| longtap             | Triggered on mobile when long tap in the viewer's viewing area. |

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

## CaptureViewer

### Constructor 

| Method          | Description                                      |
| --------------- | ------------------------------------------------ |
| CaptureViewer() | Default constructor of a `CaptureViewer` object. |

### Methods

| API Name               | Description                                                  |
| ---------------------- | ------------------------------------------------------------ |
| destroy()              | Destroy the `CaptureViewer` object.                          |
| bindContainer()        | Bind the viewer to the specified container.                  |
| unbindContainer()      | Unbind the viewer from the specified container.              |
| getStyle()             | Get the style object of `EditViewer`.                        |
| updateStyle()          | Update the style object of `EditViewer`.                     |
| getUiConfig()          | Get current `UiConfig` object.                               |
| updateUiConfig()       | Update `UiConfig` object.                                    |
| show()                 | Show the viewer.                                             |
| hide()                 | Hide the viewer.                                             |
| openDocument()         | Open the specified document by document uid.                 |
| closeDocument()        | Close current document.                                      |
| play()                 | Play the camera video stream.                                |
| stop()                 | Stop the camera video stream.                                |
| capture()              | Capture a frame from video stream.                           |
| getAllCameras()        | Return information of all available cameras on the device.   |
| selectCamera()         | Select a camera as the video source.                         |
| getCurrentCamera()     | Return information about the current camera.                 |
| getCurrentResolution() | Return the resolution of the current video input.            |
| turnOnTorch()          | Turn on the torch/flashlight if the current camera supports it. |
| turnOffTorch()         | Turn off the torch/flashlight.                               |

### Properties

| API Name                    | Description                                                  |
| --------------------------- | ------------------------------------------------------------ |
| `readonly` isBoundContainer | Return whether the viewer is bound to a container.           |
| `readonly` isVisible        | Return whether the viewer is shown or hidden.                |
| `readonly` currentDocument  | Return the object of the current document.                   |
| enableAutoCapture           | Specify or return whether to enable automatic capture.       |
| enableAutoDetect            | Specify or return whether to enable automatic border detection in video stream. |
| acceptedPolygonConfidence   | Specify or return the confidence when detecting the border.  |
| maxFrameNumber              | Specify or return the maximum number of frames detected per second. |

### Events

| API Name | Description                                        |
| -------- | -------------------------------------------------- |
| on()     | Bind a listener to the specified event.            |
| off()    | Unbind event listener(s) from the specified event. |

| Event Name    | Description                                                  |
| ------------- | ------------------------------------------------------------ |
| resized       | Triggered when the viewer is resized.                        |
| played        | Triggered when the camera video stream is played.            |
| stopped       | Triggered when the camera video stream is stopped.           |
| captured      | Triggered when a frame is captured.                          |
| cameraChanged | Triggered when the used camera is changed.                   |
| click         | Triggered when click in the viewer's viewing area.           |
| dblclick      | Triggered when double click in the viewer's viewing area.    |
| rightclick    | Triggered when right click in the viewer's viewing area.     |
| tap           | Triggered on mobile when tap in the viewer's viewing area.   |
| longtap       | Triggered on mobile when long tap in the viewer's viewing area. |

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

## PerspectiveViewer

### Constructor 

| Method              | Description                                          |
| ------------------- | ---------------------------------------------------- |
| PerspectiveViewer() | Default constructor of a `PerspectiveViewer` object. |

### Methods

| API Name              | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| destroy()             | Destroy the `PerspectiveViewer` object.                      |
| bindContainer()       | Bind the viewer to the specified container.                  |
| unbindContainer()     | Unbind the viewer from the specified container.              |
| getStyle()            | Get the style object of `EditViewer`.                        |
| updateStyle()         | Update the style object of `EditViewer`.                     |
| getUiConfig()         | Get current `UiConfig` object.                               |
| updateUiConfig()      | Update `UiConfig` object.                                    |
| show()                | Show the viewer.                                             |
| hide()                | Hide the viewer.                                             |
| openDocument()        | Open the specified document by document uid.                 |
| closeDocument()       | Close current document.                                      |
| getPageCount()        | Get the page count in the viewer.                            |
| goToPage()            | Navigate to the specified page by index.                     |
| getCurrentPageIndex() | Get the index of current page.                               |
| getCurrentPageUid()   | Get the uid of the current page.                             |
| indexToUid()          | Get the uid of the page by the index.                        |
| uidToIndex()          | Get the index of the page represented by the uid in the activated document. |
| setQuadSelection()    | Set a quadrangle selection on the current page.              |
| getQuadSelection()    | Get the quadrangle selection.                                |
| resetQuadSelection()  | Reset the quadrangle selection to the original one.          |
| perspective()         | Performs a perspective transformation in current page based on the specified quadrangle. |
| rotate()              | Rotate the specified pages.                                  |
| saveOperations()      | Save the edit operations in pages to document.               |

### Properties

| API Name                    | Description                                        |
| --------------------------- | -------------------------------------------------- |
| `readonly` isBoundContainer | Return whether the viewer is bound to a container. |
| `readonly` isVisible        | Return whether the viewer is shown or hidden.      |
| `readonly` currentDocument  | Return the object of the current document.         |

### Events

| API Name | Description                                        |
| -------- | -------------------------------------------------- |
| on()     | Bind a listener to the specified event.            |
| off()    | Unbind event listener(s) from the specified event. |

| Event Name          | Description                                                  |
| ------------------- | ------------------------------------------------------------ |
| resized             | Triggered when the viewer is resized.                        |
| pageRendered        | Triggered when a page has been completely rendered.          |
| currentIndexChanged | Triggered when currentIndex is changed.                      |
| currentPageChanged  | Triggered when current page is changed.                      |
| quadModified        | Triggered when the quadrangle selection is modified.         |
| click               | Triggered when click in the viewer's viewing area.           |
| dblclick            | Triggered when double click in the viewer's viewing area.    |
| rightclick          | Triggered when right click in the viewer's viewing area.     |
| tap                 | Triggered on mobile when tap in the viewer's viewing area.   |
| longtap             | Triggered on mobile when long tap in the viewer's viewing area. |

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

## BrowseViewer

### Constructor 

| Method         | Description                                     |
| -------------- | ----------------------------------------------- |
| BrowseViewer() | Default constructor of a `BrowseViewer` object. |

### Methods

| API Name                 | Description                                                  |
| ------------------------ | ------------------------------------------------------------ |
| destroy()                | Destroy the `BrowseViewer` object.                           |
| bindContainer()          | Bind the viewer to the specified container.                  |
| unbindContainer()        | Unbind the viewer from the specified container.              |
| getStyle()               | Get the style object of `EditViewer`.                        |
| updateStyle()            | Update the style object of `EditViewer`.                     |
| getUiConfig()            | Get current `UiConfig` object.                               |
| updateUiConfig()         | Update `UiConfig` object.                                    |
| show()                   | Show the viewer.                                             |
| hide()                   | Hide the viewer.                                             |
| openDocument()           | Open the specified document by document uid.                 |
| closeDocument()          | Close current document.                                      |
| getPageCount()           | Get the page count in the viewer.                            |
| goToPage()               | Navigate to the specified page by index.                     |
| getCurrentPageIndex()    | Get the index of current page.                               |
| getCurrentPageUid()      | Get the uid of the current page.                             |
| indexToUid()             | Get the uid of the page by the index.                        |
| uidToIndex()             | Get the index of the page represented by the uid in the activated document. |
| getSelectedPageIndices() | Get indices of selected pages.                               |
| selectAllPages()         | Select all pages.                                            |
| selectPages()            | Select pages by specified indices.                           |
| setRowAndColumn()        | Set rows and columns of displayed pages.                     |
| rotate()                 | Rotate the specified pages.                                  |
| saveOperations()         | Save the edit operations in pages to document.               |

### Properties

| API Name                    | Description                                        |
| --------------------------- | -------------------------------------------------- |
| `readonly` isBoundContainer | Return whether the viewer is bound to a container. |
| `readonly` isVisible        | Return whether the viewer is shown or hidden.      |
| `readonly` currentDocument  | Return the object of the current document.         |

### Events

| API Name | Description                                        |
| -------- | -------------------------------------------------- |
| on()     | Bind a listener to the specified event.            |
| off()    | Unbind event listener(s) from the specified event. |

| Event Name           | Description                                                  |
| -------------------- | ------------------------------------------------------------ |
| resized              | Triggered when the viewer is resized.                        |
| pageRendered         | Triggered when a page has been completely rendered.          |
| currentIndexChanged  | Triggered when currentIndex is changed.                      |
| currentPageChanged   | Triggered when current page is changed.                      |
| selectedPagesChanged | Trigeered when the page(s) is selected.                      |
| pagesDragged         | Triggered when page(s) is dragged.                           |
| pagesDropped         | Triggered when page(s) is dropped.                           |
| click                | Triggered when click in the viewer's viewing area.           |
| dblclick             | Triggered when double click in the viewer's viewing area.    |
| rightclick           | Triggered when right click in the viewer's viewing area.     |
| tap                  | Triggered on mobile when tap in the viewer's viewing area.   |
| longtap              | Triggered on mobile when long tap in the viewer's viewing area. |

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

## CustomViewer

### Constructor 

| Method         | Description                                     |
| -------------- | ----------------------------------------------- |
| CustomViewer() | Default constructor of a `CustomViewer` object. |

### Methods

| API Name          | Description                                     |
| ----------------- | ----------------------------------------------- |
| destroy()         | Destroy the `CustomViewer` object.              |
| bindContainer()   | Bind the viewer to the specified container.     |
| unbindContainer() | Unbind the viewer from the specified container. |
| getUiConfig()     | Get current `UiConfig` object.                  |
| updateUiConfig()  | Update `UiConfig` object.                       |
| show()            | Show the viewer.                                |
| hide()            | Hide the viewer.                                |

### Properties

| API Name                    | Description                                        |
| --------------------------- | -------------------------------------------------- |
| `readonly` isBoundContainer | Return whether the viewer is bound to a container. |
| `readonly` isVisible        | Return whether the viewer is shown or hidden.      |

### Events

| API Name | Description                                        |
| -------- | -------------------------------------------------- |
| on()     | Bind a listener to the specified event.            |
| off()    | Unbind event listener(s) from the specified event. |

<div class="multi-panel-end"></div>

<div class="multi-panel-switching-end"></div>