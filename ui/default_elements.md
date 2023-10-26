---
layout: default-layout
needAutoGenerateSidebar: true
noTitleIndex: true
title: Dynamsoft Document Viewer User Interface - Default Elements
keywords: Documentation, Dynamsoft Document Viewer, User Interface, Default Elements
breadcrumbText: Default Elements
description: Dynamsoft Document Viewer Documentation User Interface Default Elements part
permalink: /ui/default_elements.html
---


# Default Elements

DDV provides many default elements which have their own designed icons and bind to specific event to call the according APIs, have state interaction with viewer as well as between elements.

Specific Elements can only be applied to specific viewers. For example, `DDV.Elements.Zoom` can only be applied in `EditViewer`, and `DDV.Elements.Capture` can only be applied in `CaptureViewer`.

The following are lists of default elements as well as their default icons that are currently available for different viewer classes.

<div class="multi-panel-switching-prefix"></div>

- [Edit viewer](#edit-viewer)
- [Capture viewer](#capture-viewer)
- [Perspective viewer](#perspective-viewer)
- [Browse viewer](#browse-viewer)
- [Common](#common)

<div class="multi-panel-start"></div>

| Elements                           | ClassName of its default icon                               | More descriptions
|------------------------------------|-------------------------------------------------------------|-------------------
| DDV.Elements.Pagination            | ddv-first-page<br>ddv-prev-page<br>ddv-next-page<br>ddv-last-page | 
| DDV.Elements.RotateLeft            | ddv-rotate-left                                             | 
| DDV.Elements.RotateRight           | ddv-rotate-right                                            | 
| DDV.Elements.Delete                | ddv-delete-current                                          | Composite element contains DeleteCurrent and DeleteAll.
| DDV.Elements.DeleteCurrent         | ddv-delete-current                                          |
| DDV.Elements.DeleteAll             | ddv-delete-all                                              |
| DDV.Elements.Zoom                  | N/A                                                         | Composite element contains ZoomIn and ZoomOut.
| DDV.Elements.ZoomIn                | ddv-zoom-in                                                 |
| DDV.Elements.ZoomOut               | ddv-zoom-out                                                |
| DDV.Elements.ZoomByPercentage      | N/A                                                         |
| DDV.Elements.ThumbnailSwitch       | ddv-thumbnail-switch                                        | Control the thumbnail to show or not.
| DDV.Elements.FitMode               | N/A                                                         | Composite element contains FitWindow, FitHeight, FitWindow and ActualSize. 
| DDV.Elements.DisplayMode           | N/A                                                         | Composite element contains SinglePage and ContinuousPage. 
| DDV.Elements.Crop                  | N/A                                                         | 
| DDV.Elements.Filter                | ddv-filter                                                  | 
| DDV.Elements.Load                  | ddv-load-image                                              | Load file from local. If there is no document is opend when you click Load button, a new document (default name: dynamsoft-document-timestamp) will be created and opened automatically.
| DDV.Elements.Undo                  | ddv-undo-page                                               |
| DDV.Elements.Redo                  | ddv-redo-page                                               |
| DDV.Elements.Pan                   | ddv-pan-mode                                                | 
| DDV.Elements.Print                 | ddv-print-page                                              | 
| DDV.Elements.FitWidth              | ddv-fit-width                                               |
| DDV.Elements.FitHeight             | ddv-fit-height                                              |
| DDV.Elements.FitWindow             | ddv-fit-window                                              |
| DDV.Elements.ActualSize            | ddv-fit-actual                                              | 
| DDV.Elements.SinglePage            | ddv-single-mode                                             |
| DDV.Elements.ContinuousPage        | ddv-continuous-mode                                         |
| DDV.Elements.Download              | ddv-button-download                                         | Download image file to local.

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

| Elements                       | ClassName of default icon | More descriptions
|--------------------------------|---------------------------|--------------------
| DDV.Elements.Capture           | ddv-capture-image         | If there is no document opened when you click Capture button, a new document (default name: dynamsoft-document-timestamp) will be created and opened automatically.
| DDV.Elements.Flashlight        | ddv-camera-flashlight     |
| DDV.Elements.CameraConvert     | ddv-camera-convert        |
| DDV.Elements.CameraResolution  | ddv-resolution            |
| DDV.Elements.AutoDetect        | ddv-auto-detect           |
| DDV.Elements.AutoCapture       | ddv-auto-capture          |
| DDV.Elements.ImagePreview      | N/A                       |

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

| Elements                          | ClassName of default icon                                   | More descriptions
|-----------------------------------|-------------------------------------------------------------|------------------
| DDV.Elements.Pagination           | ddv-first-page<br>ddv-prev-page<br>ddv-next-page<br>ddv-last-page |
| DDV.Elements.RotateLeft           | ddv-rotate-left                                             | 
| DDV.Elements.RotateRight          | ddv-rotate-right                                            | 
| DDV.Elements.Delete               | N/A                                                         | Composite element contains DeleteCurrent and DeleteAll.
| DDV.Elements.DeleteCurrent        | ddv-delete-current                                          |
| DDV.Elements.DeleteAll            | ddv-delete-all                                              |
| DDV.Elements.Perspective          | ddv-perspective                                             |
| DDV.Elements.ResetQuad            | ddv-reset-quad                                              |
| DDV.Elements.Load                 | ddv-load-image                                              | Load file from local. If there is no document is opend when you click Load button, a new document (default name: dynamsoft-document-timestamp) will be created and opened automatically.
| DDV.Elements.Download             | ddv-button-download                                         | Download image file to local.
| DDV.Elements.Print                | ddv-print-page                                              |

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

| Elements                           | ClassName of default icon                                   | More descriptions
|------------------------------------|-------------------------------------------------------------|-------------------
| DDV.Elements.Pagination            | ddv-first-page, ddv-prev-page, ddv-next-page, ddv-last-page |
| DDV.Elements.RotateLeft            | ddv-rotate-left                                             | 
| DDV.Elements.RotateRight           | ddv-rotate-right                                            | 
| DDV.Elements.Delete                | ddv-delete-current                                          | Composite element contains DeleteCurrent and DeleteAll.
| DDV.Elements.DeleteCurrent         | ddv-delete-current                                          |
| DDV.Elements.DeleteAll             | ddv-delete-all                                              |
| DDV.Elements.Print                 | ddv-print-page                                              |
| DDV.Elements.Load                  | ddv-load-image                                              | Load file from local. If there is no document is opend when you click Load button, a new document (default name: dynamsoft-document-timestamp) will be created and opened automatically.
| DDV.Elements.Download              | ddv-button-download                                         | Download image file to local.

<div class="multi-panel-end"></div>

<div class="multi-panel-start"></div>

The following list shows the common elements which could be used within all viewer classes.

| Elements                   | ClassName of default icon | More descriptions
|----------------------------|---------------------------|----------------
| DDV.Elements.Blank         | N/A                       |
| DDV.Elements.SeparatorLine | N/A                       |
| DDV.Elements.MainView      | N/A                       | It cannot be used in CustomViewer.

Besides, three designed icons are provided and can be used if you want to add the related buttons in order to unify the icon style.

| Related Button   | ClassName of default icon       
|------------------|----------------------
| Close            | ddv-button-close
| Done             | ddv-button-done
| Back             | ddv-button-back

<div class="multi-panel-end"></div>

<div class="multi-panel-switching-end"></div>
