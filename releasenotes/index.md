---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer - Release Notes
keywords: Documentation, Dynamsoft Document Viewer, Release Notes
breadcrumbText: Release Notes
description: Dynamsoft Document Viewer Documentation Release Notes
permalink: /releasenotes/index.html
---

# Release Notes

## 2.1 (12/03/2024)

Version 2.1 of Dynamsoft Document Viewer comes with a suite of exciting new features, improvements to existing features, and performance optimizations.

Dynamsoft Document Viewer now comes with **massively improved performance** for working with huge documents with a large number of high resolution images. Users can expect to load, edit, annotate, and export massive documents with ease.

<iframe width="560" height="315" src="https://www.youtube.com/embed/3OD6wJ60zaA?si=kfXo78tsRbTjhKYL" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

### New Features

- Added `enableMagnifier`, which provides a corner magnifier in the [Edit Viewer]({{ site.api }}interface/editviewerconfig.html#enablemagnifier) and [Perspective Viewer]({{ site.api }}interface/perspectiveviewerconfig.html#enablemagnifier). This magnifier creates a zoomed-in view of the selected area to allow for more precise adjustments on touchscreen devices.

- Added keyboard shortcuts for document management. These shortcuts are controlled by [`KeyboardInteractionConfig`]({{ site.api }}interface/keyboardinteractionconfig.html). All shortcuts are available for the Edit Viewer, and only the navigation and page selection shortcuts are available for the Browse Viewer:
  - Undo/redo
  - Copy/cut/paste
  - Annotation/page selection
  - Scrolling/navigation
  - Cancel/delete

- Added drag-and-drop image loading with the new `enableLoadSourceByDrag` configuration property for the [Edit]({{ site.api }}interface/editviewerconfig.html#enableloadsourcebydrag), [Browse]({{ site.api }}interface/browseviewerconfig.html#enableloadsourcebydrag), and [Perspective]({{ site.api }}interface/perspectiveviewerconfig.html#enableloadsourcebydrag) Viewers  (enabled by default).

- The new [`setAnnotationDrawingStyle`]({{ site.api }}class/editviewer.html#setannotationdrawingstyle) method can now be used when creating annotations to set its default drawing style, for example, to set a custom image to use as the default stamp annotation.

- Added the following flags to restrict annotation editing actions: [`noResize`]({{ site.api }}interface/annotationinterface/flags.html#noresize), [`noRotate`]({{ site.api }}interface/annotationinterface/flags.html#norotate), [`noMove`]({{ site.api }}interface/annotationinterface/flags.html#nomove). These flags are preserved when saving to PDF, and respected when importing into DDV from PDF.

- Added a [`flattened`]({{ site.api }}class/annotation/rectangle.html#flattened) property getter/setter to annotation objects, which flattens the **individual** annotation onto the base image layer. This behavior is also preserved upon saving to PDF. For example, a rectangle annotation may be flattened with [`Rectangle.flattened = true`]({{ site.api }}class/annotation/rectangle.html#flattened).

- Added informative task progression messaging using [`InfoObject`]({{ site.api }}interface/infoobject.html) for event listening. `InfoObject` provides different details for different types.

### Improvements 

- Improved general performance.

- Added support for processing much larger documents (over 1000 pages). See performance improvements compared to version 2.0:

{% comment %}
[Performance chart](/assets/imgs/version-2.1-release-performance-chart.png)


Win10  i5-7400 CPU @ 3.00GHz

| Document Type   | Number of Pages   | File Size   |    Load Time   |    Peak Memory Use for Loading  | Save Time  | Peak Memory Use for Saving                                            |
| --------------- | ------------------| ------------|------------|------------|------------|------------------------------------------------------------ |
|<td rowspan="3">Image PDF[96DPI 2160x3840 convertMode ImageOnly]</td>| 100| 92.1MB  |1.3s |650MB|1.33s|780MB|
|                                                  |500 |460MB  |4.5s|890MB|12.2s|1934MB|
|                                                  |1000|921MB|9.7s|960MB|24.07s|4GB
|<td rowspan="3">Text PDF[A4 convertMode render]</td>                  |100|2.61MB|	0.411s|330MB|0.290s|	340MB|
|                                                 |500|13.0MB|1.185s|446MB|	2.427s|556MB|
|                                                 |1000|26.1MB|2.777s|540MB|4.861s|590MB|
{% endcomment %}
  Win10  i5-7400 CPU @ 3.00GHz
  <table>
    <thead>
      <tr>
        <th>Document Type</th>
        <th>Number of Pages</th>
        <th>File Size</th>
        <th>Load Time</th>
        <th>Peak Memory Use for Loading</th>
        <th>Save Time</th>
        <th>Peak Memory Use for Saving</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td rowspan="3">Image PDF[96DPI 2160x3840 convertMode ImageOnly]</td>
        <td>100</td>
        <td>92.1MB</td>
        <td>1.3s</td>
        <td>650MB</td>
        <td>1.33s</td>
        <td>780MB</td>
      </tr>
      <tr>
        <td>500</td>
        <td>460MB</td>
        <td>4.5s</td>
        <td>890MB</td>
        <td>12.2s</td>
        <td>1934MB</td>
      </tr>
      <tr>
        <td>1000</td>
        <td>921MB</td>
        <td>9.7s</td>
        <td>960MB</td>
        <td>24.07s</td>
        <td>4GB</td>
      </tr>
      <tr>
        <td rowspan="3">Text PDF[A4 convertMode render]</td>
        <td>100</td>
        <td>2.61MB</td>
        <td>0.411s</td>
        <td>330MB</td>
        <td>0.290s</td>
        <td>340MB</td>
      </tr>
      <tr>
        <td>500</td>
        <td>13.0MB</td>
        <td>1.185s</td>
        <td>446MB</td>
        <td>2.427s</td>
        <td>556MB</td>
      </tr>
      <tr>
        <td>1000</td>
        <td>26.1MB</td>
        <td>2.777s</td>
        <td>540MB</td>
        <td>4.861s</td>
        <td>590MB</td>
      </tr>
    </tbody>
  </table>

- The annotation toolbar and annotation palette in the Edit Viewer are now optional and can be toggled with [`toolbarConfig`]({{ site.api }}interface/annotationinterface/toolbarconfig.html) and [`paletteConfig`]({{ site.api }}interface/annotationinterface/paletteconfig.html) from [`annotationConfig`]({{ site.api }}interface/annotationconfig.html).

- Removed page scrolling with mouse scroll wheel and touchscreen swiping in single page mode.

- Improved page selection performance in the thumbnail gallery.

## 2.0 (08/20/2024)

**We are excited to introduce version 2.0, which focuses on adding a powerful new annotation feature. This release includes comprehensive support for various types of annotations, new APIs for managing annotations, and advanced UI capabilities for seamless interaction.**

Supported Annotation Types:

- [Rectangle]({{ site.api }}class/annotation/rectangle.html)
- [Ellipse]({{ site.api }}class/annotation/ellipse.html)
- [Polygon]({{ site.api }}class/annotation/polygon.html)
- [Polyline]({{ site.api }}class/annotation/polyline.html)
- [Line]({{ site.api }}class/annotation/line.html)
- [Ink]({{ site.api }}class/annotation/ink.html)
- [TextBox]({{ site.api }}class/annotation/textbox.html)
- [TextTypewriter]({{ site.api }}class/annotation/texttypewriter.html)
- [Stamp]({{ site.api }}class/annotation/stamp.html)

### Built-in UI for Annotation

#### Direct Annotation Operations in the UI

- Add, select, and delete annotations
- Drag, resize, and rotate selected annotations
- Real-time editing of annotation styles using the palette

#### New Built-in Elements

- Added built-in elements to enhance UI configuration flexibility.

### New APIs for Annotation

- Added the namespace [Dynamsoft.DDV.annotationManager]({{ site.api }}class/annotationmanager.html) and APIs for annotation management:

  - Create, delete, and retrieve annotations based on various conditions
  - Adjust annotation hierarchy
  - Handle events triggered by annotation operations

- Added the property [annotationConfig]({{ site.api }}interface/editviewerconstructoroptions.html#annotationConfig) to EditViewerConstructorOptions for configuring the annotations in the viewer, including the toolbar, palette, and default annotation style:

  - [annotationSelectionStyle]({{ site.api }}interface/annotationconfig.html#annotationSelectionStyle): Defines the style of annotation selection.
  - [inkCreateDelay]({{ site.api }}interface/annotationconfig.html#inkCreateDelay): Specifies the delay for ink creation to support annotations created in multiple strokes.
  - [showOnTopWhenSelected]({{ site.api }}interface/annotationconfig.html#showOnTopWhenSelected): Determines whether the selected annotation should be displayed on the top layer.

- Added the method [`<static> addFonts()`]({{ site.api }}namespace/ddv.html#static-addfonts) to add fonts to the library.

- Added the method [`selectAnnotations()`]({{ site.api }}class/editviewer.html#selectannotations) to select the specified annotation(s) on the current page.

- Added the method [`getSelectedAnnotations()`]({{ site.api }}class/editviewer.html#getselectedannotations) to retrieve selected annotation(s).

- Add properties [`mediaBox`]({{ site.api }}interface/idocument/pagedata.html#mediaBox) and [`cropBox`]({{ site.api }}interface/idocument/pagedata.html#cropBox) to [`PageData`]({{ site.api }}interface/idocument/pagedata.html) for accurate annotation position calculation.

- Added the property [`annotationMode`]({{ site.api }}class/editviewer.html#annotationmode) to specify or return the annotation mode of the viewer.

- Add the property `saveAnnotation` to the interfaces [`SavePngSettings`]({{ site.api }}interface/idocument/savepngsettings.html), [`SaveJpegSettings`]({{ site.api }}interface/idocument/savejpegsettings.html), or [`SaveTiffSettings`]({{ site.api }}interface/idocument/savetiffsettings.html) to determine whether annotations are saved as part of the image when calling [`document.saveToPng()`]({{ site.api }}interface/idocument/index.html#saveToPng), [`document.saveToJpeg()`]({{ site.api }}interface/idocument/index.html#saveToJpeg), or [`document.saveToTiff()`]({{ site.api }}interface/idocument/index.html#saveToTiff).

- Added the property [`saveAnnotation`]({{ site.api }}interface/idocument/savepdfsettings.html#saveAnnotation) to the interface [`SavePdfSettings`]({{ site.api }}interface/idocument/savepdfsettings.html)  to configure whether annotations should be saved  when [`document.saveToPdf()`]({{ site.api }}interface/idocument/index.html#saveToPdf) is called.

- Add the parameter [`defaultUiConfigOptions`]({{ site.api }}interface/defaultuiconfigoptions.html) to [`<static> getDefaultUiConfig()`]({{ site.api }}namespace/ddv.html#static-getdefaultuiconfig) to retrieve configurations including annotations.

- Add the parameter [`printSettings`]({{ site.api }}interface/idocument/printsettings.html) to the [`document.print()`]({{ site.api }}interface/idocument/index.html#print)  to specify whether printable annotations should be included in the print.

- Added the type `annotation` to [`ToolMode`]({{ site.api }}class/editviewer.html#toolMode) to enable a mode that allows annotations to be manipulated via the UI.

- Added the type `annotationSelectionStyle` to [`EditViewerStyleName`]({{ site.api }}class/editviewer.html#getStyle) for retrieving or updating the annotation selection style.

### Other New APIs

Additionally, we've optimized performance and added several new features to enhance the overall user experience.

- Added the property [`password`]({{ site.api }}interface/idocument/savepdfsettings.html#password)  to the interface [`SavePdfSettings`]({{ site.api }}interface/idocument/savepdfsettings.html) for configuring the password of the PDF file to save when [`document.saveToPdf()`]({{ site.api }}interface/idocument/index.html#saveToPdf) is called.

- Added the property [`imageScaleFactor`]({{ site.api }}interface/idocument/savepdfsettings.html#imageScaleFactor)  to the interface [`SavePdfSettings`]({{ site.api }}interface/idocument/savepdfsettings.html) for configuring the image scale factor of the PDF file to be saved when [`document.saveToPdf()`]({{ site.api }}interface/idocument/index.html#saveToPdf) is called.

### Improved

- Optimize the display effect of images in thumbnails.
- Optimize the interactive experience of scaling.
- Modified the type of [`PdfSource.renderOptions.renderAnnotations`]({{ site.api }}interface/idocument/pdfsource.html#renderAnnotations) to support reading annotations.
- The method `openDocument()` supports the UID or the document object. This affects the `openDocument()` method in the [`EditViewer`]({{ site.api }}class/editviewer.html#openDocument), [`PerspectiveViewer`]({{ site.api }}class/perspectiveviewer.html#openDocument), [`CaptureViewer`]({{ site.api }}class/captureviewer.html#openDocument), and [`BrowseViewer`]({{ site.api }}class/browseviewer.html#openDocument) classes.

### Changed

- Change the length unit from pixel to point for functions and events related to cropping, for example, [`crop()`]({{ site.api }}class/editviewer.html#crop), [`getCropRect()`]({{ site.api }}class/editviewer.html#getCropRect), [`setCropRect()`]({{ site.api }}class/editviewer.html#setCropRect), [`cropRectDrawn`]({{ site.api }}class/editviewer.html#cropRectDrawn), [`cropRectDeleted`]({{ site.api }}class/editviewer.html#cropRectDeleted),[`cropRectModified`]({{ site.api }}class/editviewer.html#cropRectModified).
- Change the units of the parameters pageWidth and pageHeight in the method [`insertBlankPage`]({{ site.api }}interface/idocument/index.html#insertblankpage) from inches to points.
- The related date string format change shifts from format D:YYYYMMDDHHmmSS to D:YYYYMMDDHHmmSSOHH'mm'.

## 1.1 (01/12/2024)

### Improved

- Optimized compatibility with browsers. [>> Detail]({{ site.gettingstarted }}sys_requirement.html#supported-browsers)

### Added

- Added the namespace [`Dynamsoft.DDV.Core`]({{ site.api }}namespace/ddv_core.html).

- Added the property [`license`]({{ site.api }}namespace/ddv_core.html#license) to specify the license string.

- Added the property [`engineResourcePath`]({{ site.api }}namespace/ddv_core.html#engineresourcepath) to specify the path leading to a folder containing the distributed WASM files.

- Added the property [`deviceFriendlyName`]({{ site.api }}namespace/ddv_core.html#devicefriendlyname) to specify a human-readable name for the device which corresponds to its UUID.

- Added the method [`loadWasm()`]({{ site.api }}namespace/ddv_core.html#loadwasm) to load WASM modules before initializing.

- Added the method [`init()`]({{ site.api }}namespace/ddv_core.html#init) to initialize DDV.

- Added the method [`insertBlankPage()`]({{ site.api }}interface/idocument/index.html#insertblankpage) to insert a blank page to the document.

### Removed

The following API is removed.

| API Name                  | Notes                                                        |
| ------------------------- | ------------------------------------------------------------ |
| `Dynamsoft.DDV.setConfig()` | Use [`Dynamsoft.DDV.Core.license`]({{ site.api }}namespace/ddv_core.html#license),  [`Dynamsoft.DDV.Core.engineResource`]({{ site.api }}namespace/ddv_core.html#engineresourcepath), [`Dynamsoft.DDV.Core.deviceFriendlyName`]({{ site.api }}namespace/ddv_core.html#devicefriendlyname), [`Dynamsoft.DDV.Core.init()`]({{ site.api }}namespace/ddv_core.html#init) instead. |

## 1.0.0 (12/26/2023)

Dynamsoft Document Viewer (DDV) is a versatile SDK designed to offer a range of viewers for configuring and executing various document processing workflows.

### Highlights

#### Efficient Data Management

Organize, retrieve, and manage documents and pages efficiently: 
- Document Management: Document creation/deletion/merging, etc.
- Page management: Pages in documents loading/saving/deleting/moving, etc.

#### Various Viewers 

Various kinds of viewers implement different document processing flows:
- Edit Viewer: Edit the pages in document, such as, rotating, cropping, filtering, etc. and adjust the layout of the display.
- Capture Viewer: Control camera, play video stream, and capture the images from camera.
- Perspective Viewer: Do page boundaries manual adjustment & perspective transformation.
- Browse Viewer: Display pages in multiple-mode, pages can be multiple selected.
- Custom Viewer: No built-in UI or functionality, which is used for creating your own viewer.

#### Flexible Customization

Besides using the default user interface and viewer directly, developers can easily and flexibly customize them:
- [User Interface](https://www.dynamsoft.com/document-viewer/docs/ui/index.html): Layout, elements
- [Viewer](https://www.dynamsoft.com/document-viewer/docs/viewer/index.html): Styles, viewer properties

#### Advanced Features

DDV provides methods to access document boundaries detection and image filter algorithms.
- [Image filter](https://www.dynamsoft.com/document-viewer/docs/features/advanced/imagefilter.html): Image filter algorithm which is used by Filter element in Edit Viewer.
- [Document detection](https://www.dynamsoft.com/document-viewer/docs/features/advanced/documentdetect.html): Document boundaries detection algorithm which is used during capturing images. Recommend using [Dynamsoft Document Normalizer](https://www.dynamsoft.com/document-normalizer/docs/web/programming/javascript/api-reference/document-normalizer-module.html?lang=javascript).
