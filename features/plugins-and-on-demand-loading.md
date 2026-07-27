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

File: `ddv-plugin-camera.js` | Import: `dynamsoft-document-viewer/camera`

Provides the Capture Viewer's camera functionality, including video stream playback and image capture. Load this plugin only if your application requires camera capture.

### Annotation Plugin

File: `ddv-plugin-annotation.js` | Import: `dynamsoft-document-viewer/annotation`

Provides all annotation-related functionality, including creating, editing, and managing annotations. If your application doesn't require annotation editing, you can omit this module to reduce the overall bundle size.

When the annotation plugin is not loaded, annotation-related UI elements in the viewer configuration are automatically ignored.

### Image PDF Parser Plugin

File: `ddv-plugin-image-pdf.js` | Import: `dynamsoft-document-viewer/imagePdf`

Provides lightweight PDF parsing for pure image-based PDFs (JPEG and JBIG2). Combined with the built-in support for saving image-based PDFs, this plugin enables image PDF workflows without the full PDF WASM module.

## WASM On-Demand Loading

The image processing WASM modules are split so that format-specific modules are loaded only when needed:

- The core image processing WASM module covers common image formats and licensing.
- The **PDF and TIFF** WASM module (a single file covering both formats) is separated and loaded on demand — only when your application processes TIFF files or vector-based PDFs.
- For pure image-based PDFs, the [Image PDF parser plugin](#image-pdf-parser-plugin) can be used instead, eliminating the need to load the full PDF WASM module.
- This reduces the initial download size and memory usage, especially for camera-based scanning scenarios where TIFF/vector PDF processing may not be needed.

## How to Load Plugins

For details on how to include plugins in your project, refer to [Adding the dependency](/gettingstarted/add_dependency.md).
