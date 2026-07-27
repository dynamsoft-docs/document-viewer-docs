---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Upgrade Guide Dynamsoft Document Viewer Documentation 
keywords: Documentation, Dynamsoft Document Viewer, Upgrade
breadcrumbText: Upgrade Guide
description: Upgrade guide for Dynamsoft Document Viewer
---

# Upgrade Guide

Upgrading Dynamsoft Document Viewer from an old version to the latest version is straightforward. You need to pay attention to the following changes:

* Changes to Default [`UIConfig`](/api/interface/uiconfig.md)
* Changes to APIs

## Changes to Default UIConfig

The default UI elements may be different across different versions. Check out [this post](/ui/default_ui.md) to learn about the default configs.

You can try to unify the UI across versions by specifying the [`UIConfig`](/api/interface/uiconfig.md). But pay attention to supported [elements](/ui/default_elements.md) of different versions.


## Changes to APIs

### Breaking Changes in v5.0

v5.0 adopts a plugin design. You need to load [plugins](/features/plugins-and-on-demand-loading.md) to make related features available.

The following is a list of affected APIs. Methods will throw errors,  and properties and enumerations will be undefined if the required plugin is not installed. 

Camera plugin:

* [`CaptureViewer()`](/api/class/captureviewer.md#captureviewer)
* [`DDV.setProcessingHandler()`](/api/namespace/ddv.md#static-setprocessinghandler)

Annotation plugin:

   - EditViewer:

      * [`annotationMode`](/api/class/editviewer.md#annotationmode)
      * [`toolmode`](/api/class/editviewer.md#toolmode)
      * [`getAnnotationDrawingStyle()`](/api/class/editviewer.md#getannotationdrawingstyle)
      * [`setAnnotationDrawingStyle()`](/api/class/editviewer.md#setannotationdrawingstyle)
      * [`getSelectedAnnotations()`](/api/class/editviewer.md#getselectedannotations)
      * [`selectAnnotations()`](/api/class/editviewer.md#selectannotations)

   - Enumeration:

      * [`EnumAnnotationRenderMode`](/api/enumeration-type/enumannnotationrendermode.md)'s `loadAnnotations` option (`loadSource()` and `updateSource()` will throw an error if it is enabled but the plugin is not installed).
      * [`EnumAnnotationRenderMode`](/api/enumeration-type/enumlineending.md)
      * [`EnumStampIcon`](/api/enumeration-type/enumstampicon.md)

   - Other:

      [`DDV.getDefaultUiConfig()`](/api/namespace/ddv.md#static-getdefaultuiconfig) will ignore annotation-related elements.


### Breaking Changes in v3.0

#### Initialization of Edit Viewer

In v2.x, you can use an additional options parameter to enable the annotation icon in the default UI.

```js
const editViewer = new Dynamsoft.DDV.EditViewer({
    container: "container",
    uiConfig: Dynamsoft.DDV.getDefaultUiConfig("editViewer", {includeAnnotationSet: true}),
});
```

In v3.x, the option is removed and the annotation icon is included in the default UI. So you can just initialize it with the following code:

```js
const editViewer = new Dynamsoft.DDV.EditViewer({
    container: "container"
});
```


#### Getting the Page Data

Before v3.x, [`getPageData()`](/api/interface/idocument/index.md#getpagedata) returns a promise object, which was time consuming as it required getting all the image blobs. In v3.x, it directly returns an [`IPageData`](/api/interface/ipagedata.md) object and you can retrieve image blobs with its functions.


