---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer Features - Plugins and On-Demand Loading
keywords: Documentation, Dynamsoft Document Viewer, Features, Plugins, On-Demand Loading
breadcrumbText: Plugins and On-Demand Loading
description: Dynamsoft Document Viewer Documentation Features - Plugins and On-Demand Loading
permalink: /features/plugins-and-on-demand-loading.html
---

# Plugins and On-Demand Loading

Starting from version 5.0, Dynamsoft Document Viewer adopts a **pluggable architecture**. Features are packaged as standalone plugins, and WASM modules are split for on-demand loading — allowing you to load only what your application needs.

## Plugins

The following feature modules are provided as standalone plugins:

### Camera Plugin

Provides the Capture Viewer's camera functionality, including video stream playback and image capture. Load this plugin only if your application requires camera capture.

### Annotation Plugin

Provides all annotation-related functionality, including creating, editing, and managing annotations. If your application doesn't require annotation editing, you can omit this module to reduce the overall bundle size.

When the annotation plugin is not loaded, annotation-related UI elements in the viewer configuration are automatically ignored.

### Image PDF Parser Plugin

Provides lightweight PDF parsing for pure image-based PDFs (JPEG and JBIG2). Combined with the built-in support for saving image-based PDFs, this plugin enables image PDF workflows without the full PDF WASM module.

### Form Plugin

Provides PDF form field management and form-filling functionality, including reading the raw data of form fields, updating their runtime properties (value, visibility, read-only, required, etc.), and locating the rendered form widgets in the viewer. Load this plugin only if your application needs to fill or manage PDF forms.

The form plugin depends on the [annotation plugin](#annotation-plugin) and must be installed after it.

When the form plugin is not loaded, the `Dynamsoft.DDV.formManager` instance is `undefined` and the form-related methods of the viewers are unavailable. Please refer to [`FormManager`](/api/class/formmanager.md) for the available APIs.

## WASM On-Demand Loading

The WASM modules are split so that format-specific modules are loaded only when needed:

- The core WASM module covers common image formats and licensing.
- The **PDF and TIFF** WASM module (a single file covering both formats) is separated and loaded on demand — only when your application processes TIFF or PDF files.
- For pure image-based (JPEG and JBIG2) PDFs, the [Image PDF parser plugin](#image-pdf-parser-plugin) can be used instead, eliminating the need to load the full PDF WASM module. For PDFs with vector content or requiring annotation features, the full PDF WASM is still needed.
- The image processing module is loaded upon performing operations like perspective transform and image filtering.
- This reduces the initial download size and memory usage, especially for camera-based scanning scenarios where TIFF/vector PDF processing may not be needed.

You can use the following code to preload all the WASM files.

```js
Dynamsoft.DDV.Core.loadWasm();
```

## How to Load Plugins

For details on how to include plugins in your project, refer to [Adding the dependency](/gettingstarted/add_dependency.md).
