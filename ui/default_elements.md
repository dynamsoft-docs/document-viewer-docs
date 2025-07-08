---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer User Interface - Built-in Elements
keywords: Documentation, Dynamsoft Document Viewer, User Interface, Built-in Elements
breadcrumbText: Built-in Elements
description: Dynamsoft Document Viewer Documentation User Interface Built-in Elements part
permalink: /ui/default_elements.html
---


# Built-in Elements

DDV provides many built-in elements which have their own designed icons and bind to specific event to call the according APIs, have state interaction with viewer as well as between elements.

Specific Elements can only be applied to specific viewers. For example, `Dynamsoft.DDV.Elements.Zoom` can only be applied in `EditViewer`, and `Dynamsoft.DDV.Elements.Capture` can only be applied in `CaptureViewer`.

The following are lists of built-in elements as well as their default icons that are currently available for different viewer classes.

<div class="multi-panel-switching-prefix"></div>

- [Edit viewer](#edit-viewer)
- [Capture viewer](#capture-viewer)
- [Perspective viewer](#perspective-viewer)
- [Browse viewer](#browse-viewer)
- [Common](#common)

<div class="multi-panel-start"></div>

| Supported Elements                           | className of its default icon                               | More descriptions
|------------------------------------|-------------------------------------------------------------|-------------------
| Dynamsoft.DDV.Elements.Pagination            | ddv-first-page<br>ddv-prev-page<br>ddv-next-page<br>ddv-last-page | 
| Dynamsoft.DDV.Elements.RotateLeft            | ddv-rotate-left                                             | 
| Dynamsoft.DDV.Elements.RotateRight           | ddv-rotate-right                                            | 
| Dynamsoft.DDV.Elements.Delete                | ddv-delete-current                                          | Composite element contains DeleteCurrent and DeleteAll.
| Dynamsoft.DDV.Elements.DeleteCurrent         | ddv-delete-current                                          |
| Dynamsoft.DDV.Elements.DeleteAll             | ddv-delete-all                                              |
| Dynamsoft.DDV.Elements.Zoom                  | N/A                                                         | Composite element contains ZoomIn and ZoomOut.
| Dynamsoft.DDV.Elements.ZoomIn                | ddv-zoom-in                                                 |
| Dynamsoft.DDV.Elements.ZoomOut               | ddv-zoom-out                                                |
| Dynamsoft.DDV.Elements.ZoomByPercentage      | N/A                                                         |
| Dynamsoft.DDV.Elements.ThumbnailSwitch       | ddv-thumbnail-switch                                        | Control the thumbnail to show or not.
| Dynamsoft.DDV.Elements.FitMode               | N/A                                                         | Composite element contains FitWindow, FitHeight, FitWindow and ActualSize. 
| Dynamsoft.DDV.Elements.DisplayMode           | N/A                                                         | Composite element contains SinglePage and ContinuousPage. 
| Dynamsoft.DDV.Elements.Crop                  | N/A                                                         | 
| Dynamsoft.DDV.Elements.Filter                | ddv-filter                                                  | 
| Dynamsoft.DDV.Elements.Load                  | ddv-load-image                                              | Load file from local. If there is no document is opend when you click Load button, a new document (default name: doc-*timestamp*) will be created and opened automatically.
| Dynamsoft.DDV.Elements.Undo                  | ddv-undo-page                                               |
| Dynamsoft.DDV.Elements.Redo                  | ddv-redo-page                                               |
| Dynamsoft.DDV.Elements.Pan                   | ddv-pan-mode                                                | 
| Dynamsoft.DDV.Elements.Print                 | ddv-print-page                                              | 
| Dynamsoft.DDV.Elements.FitWidth              | ddv-fit-width                                               |
| Dynamsoft.DDV.Elements.FitHeight             | ddv-fit-height                                              |
| Dynamsoft.DDV.Elements.FitWindow             | ddv-fit-window                                              |
| Dynamsoft.DDV.Elements.ActualSize            | ddv-fit-actual                                              | 
| Dynamsoft.DDV.Elements.SinglePage            | ddv-single-mode                                             |
| Dynamsoft.DDV.Elements.ContinuousPage        | ddv-continuous-mode                                         |
| Dynamsoft.DDV.Elements.Download              | ddv-button-download                                         | Download pages in pdf format to local.                   |
| Dynamsoft.DDV.Elements.TextSelectionMode              | ddv-text-selection-mode                                         |                    |
| Dynamsoft.DDV.Elements.TextSearchPanelSwitch              | ddv-search-switch                                         |                    |
| Dynamsoft.DDV.Elements.TextSearchPanel              | N/A                                |                    |

|Annotation-related Elements                     | className of its default icon |
| ----------------------------------------------- | ----------------------------- |
| Dynamsoft.DDV.Elements.AnnotationSet            | ddv-annotation-mode           |
| Dynamsoft.DDV.Elements.RectAnnotation           | ddv-rect                      |
| Dynamsoft.DDV.Elements.EllipseAnnotation        | ddv-ellipse                   |
| Dynamsoft.DDV.Elements.PolygonAnnotation        | ddv-polygon                   |
| Dynamsoft.DDV.Elements.PolylineAnnotation       | ddv-polyline                  |
| Dynamsoft.DDV.Elements.LineAnnotation           | ddv-line                      |
| Dynamsoft.DDV.Elements.InkAnnotation            | ddv-ink                       |
| Dynamsoft.DDV.Elements.TextBoxAnnotation        | ddv-text-box                  |
| Dynamsoft.DDV.Elements.TextTypewriterAnnotation | ddv-typewriter                |
| Dynamsoft.DDV.Elements.StampIconAnnotation      | ddv-stamp-icon                |
| Dynamsoft.DDV.Elements.StampImageAnnotation     | ddv-stamp-image               |
| Dynamsoft.DDV.Elements.HighlightAnnotation               | ddv-highlight-mode              |
| Dynamsoft.DDV.Elements.UnderlineAnnotation               | ddv-underline-mode              |
| Dynamsoft.DDV.Elements.StrikeoutAnnotation               | ddv-strikeout-mode              |
| Dynamsoft.DDV.Elements.SelectAnnotation         | ddv-annot-select              |
| Dynamsoft.DDV.Elements.EraseAnnotation          | ddv-annot-eraser              |
| Dynamsoft.DDV.Elements.BringForward             | ddv-bring-forward             |
| Dynamsoft.DDV.Elements.BringToFront             | ddv-bring-to-front            |
| Dynamsoft.DDV.Elements.SendBackward             | ddv-send-backward             |
| Dynamsoft.DDV.Elements.SendToBack               | ddv-send-to-back              |

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

| Supported Elements                       | className of default icon | More descriptions
|--------------------------------|---------------------------|--------------------
| Dynamsoft.DDV.Elements.Capture           | ddv-capture-image         | If there is no document opened when you click Capture button, a new document (default name: doc-*timestamp*) will be created and opened automatically.
| Dynamsoft.DDV.Elements.Flashlight        | ddv-camera-flashlight     |
| Dynamsoft.DDV.Elements.CameraConvert     | ddv-camera-convert        |
| Dynamsoft.DDV.Elements.CameraResolution  | ddv-resolution            |
| Dynamsoft.DDV.Elements.AutoDetect        | ddv-auto-detect           |
| Dynamsoft.DDV.Elements.AutoCapture       | ddv-auto-capture          |
| Dynamsoft.DDV.Elements.ImagePreview      | N/A                       |

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

| Supported Elements                          | className of default icon                                   | More descriptions
|-----------------------------------|-------------------------------------------------------------|------------------
| Dynamsoft.DDV.Elements.Pagination           | ddv-first-page<br>ddv-prev-page<br>ddv-next-page<br>ddv-last-page |
| Dynamsoft.DDV.Elements.RotateLeft           | ddv-rotate-left                                             | 
| Dynamsoft.DDV.Elements.RotateRight          | ddv-rotate-right                                            | 
| Dynamsoft.DDV.Elements.Delete               | N/A                                                         | Composite element contains DeleteCurrent and DeleteAll.
| Dynamsoft.DDV.Elements.DeleteCurrent        | ddv-delete-current                                          |
| Dynamsoft.DDV.Elements.DeleteAll            | ddv-delete-all                                              |
| Dynamsoft.DDV.Elements.PerspectiveAll          | ddv-perspective-all                                             |
| Dynamsoft.DDV.Elements.FullQuad            | ddv-full-quad                                              |
| Dynamsoft.DDV.Elements.Load                 | ddv-load-image                                              | Load file from local. If there is no document is opend when you click Load button, a new document (default name: doc-*timestamp*) will be created and opened automatically.
| Dynamsoft.DDV.Elements.Download             | ddv-button-download                                         | Download pages in pdf format to local.
| Dynamsoft.DDV.Elements.Print                | ddv-print-page                                              |

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

| Supported Elements                           | className of default icon                                   | More descriptions
|------------------------------------|-------------------------------------------------------------|-------------------
| Dynamsoft.DDV.Elements.Pagination            | ddv-first-page, ddv-prev-page, ddv-next-page, ddv-last-page |
| Dynamsoft.DDV.Elements.RotateLeft            | ddv-rotate-left                                             | 
| Dynamsoft.DDV.Elements.RotateRight           | ddv-rotate-right                                            | 
| Dynamsoft.DDV.Elements.Delete                | ddv-delete-current                                          | Composite element contains DeleteCurrent and DeleteAll.
| Dynamsoft.DDV.Elements.DeleteCurrent         | ddv-delete-current                                          |
| Dynamsoft.DDV.Elements.DeleteAll             | ddv-delete-all                                              |
| Dynamsoft.DDV.Elements.Print                 | ddv-print-page                                              |
| Dynamsoft.DDV.Elements.Load                  | ddv-load-image                                              | Load file from local. If there is no document is opend when you click Load button, a new document (default name: doc-*timestamp*) will be created and opened automatically.
| Dynamsoft.DDV.Elements.Download              | ddv-button-download                                         | Download pages in pdf format to local.

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

The following list shows the common elements which could be used within all viewer classes.

| Elements                   | className of default icon | More descriptions
|----------------------------|---------------------------|----------------
| Dynamsoft.DDV.Elements.Blank         | N/A                       |
| Dynamsoft.DDV.Elements.SeparatorLine | N/A                       |
| Dynamsoft.DDV.Elements.MainView      | N/A                       | It cannot be used in CustomViewer.

Besides, three designed icons are provided and can be used if you want to add the related buttons in order to unify the icon style.

| Related Button   | className of default icon       
|------------------|----------------------
| Close            | ddv-button-close
| Done             | ddv-button-done
| Back             | ddv-button-back

<div class="multi-panel-end"></div>

<div class="multi-panel-switching-end"></div>
