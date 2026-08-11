---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer Getting Started - Adding the dependency
keywords: Documentation, Dynamsoft Document Viewer, Getting Started, Adding the dependency
breadcrumbText: Adding the dependency
description: Dynamsoft Document Viewer Documentation Getting Started, Adding the dependency
permalink: /gettingstarted/add_dependency.html
---

# Adding the dependency

To use the SDK, we need to include the package below.

- `dynamsoft-document-viewer`: Required, it provides functions to create the viewers.

It has several plugins that we can load on demand. Check [Plugins and On-Demand Loading](/features//plugins-and-on-demand-loading.md) to learn more.

## Use a CDN

The simplest way to include the SDK is to use either the [jsDelivr](https://jsdelivr.com/) or [UNPKG](https://unpkg.com/) CDN.

- jsDelivr

  ```html
  <script src="https://cdn.jsdelivr.net/npm/dynamsoft-document-viewer@latest/dist/ddv.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/dynamsoft-document-viewer@latest/dist/ddv.css">
  ```

  With plugins:

  ```html
  <script src="https://cdn.jsdelivr.net/npm/dynamsoft-document-viewer@latest/dist/plugins/ddv-plugin-camera.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/dynamsoft-document-viewer@latest/dist/plugins/ddv-plugin-annotation.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/dynamsoft-document-viewer@latest/dist/plugins/ddv-plugin-image-pdf.js"></script>
  ```

- UNPKG

  ```html
  <script src="https://unpkg.com/dynamsoft-document-viewer@latest/dist/ddv.js"></script>
  <link rel="stylesheet" href="https://unpkg.com/dynamsoft-document-viewer@latest/dist/ddv.css">
  ```

  With plugins:

  ```html
  <script src="https://unpkg.com/dynamsoft-document-viewer@latest/dist/plugins/ddv-plugin-camera.js"></script>
  <script src="https://unpkg.com/dynamsoft-document-viewer@latest/dist/plugins/ddv-plugin-annotation.js"></script>
  <script src="https://unpkg.com/dynamsoft-document-viewer@latest/dist/plugins/ddv-plugin-image-pdf.js"></script>
  ```

To use the plugins, you also need to run the following code:

```js
Dynamsoft.DDV.use(Dynamsoft.DDV.AnnotationPlugin);
Dynamsoft.DDV.use(Dynamsoft.DDV.CameraPlugin);
Dynamsoft.DDV.use(Dynamsoft.DDV.ImagePdfParserPlugin);
```

## Host the SDK yourself

Besides using the CDN, you can also download the Solution and host related files on your own website/server before including it in your application.

Options to download the SDK:

- From the website

  [Download the JavaScript ZIP package](https://www.dynamsoft.com/document-viewer/downloads)

- yarn

  ```cmd
  yarn add dynamsoft-document-viewer@latest
  ```

- npm

  ```cmd
  npm install dynamsoft-document-viewer@latest
  ```

Depending on how you downloaded the SDK and where you put it, you can typically include it like this:

  ```html
  <!-- Upon extracting the zip package into your project, you can generally include it in the following manner -->
  <script src="./Your-Folder/dist/ddv.js"></script>
  <link rel="stylesheet" href="./Your-Folder/dist/ddv.css">
  ```

  With plugins:

  ```html
  <script src="./Your-Folder/dist/plugins/ddv-plugin-camera.js"></script>
  <script src="./Your-Folder/dist/plugins/ddv-plugin-annotation.js"></script>
  <script src="./Your-Folder/dist/plugins/ddv-plugin-image-pdf.js"></script>
  ```

or

  ```html
  <script src="./node_modules/dynamsoft-document-viewer/dist/ddv.js"></script>
  <link rel="stylesheet" href="./node_modules/dynamsoft-document-viewer/dist/ddv.css">
  ```

  With plugins:

  ```html
  <script src="./node_modules/dynamsoft-document-viewer/dist/plugins/ddv-plugin-camera.js"></script>
  <script src="../node_modules/dynamsoft-document-viewer/dist/plugins/ddv-plugin-annotation.js"></script>
  <script src="./node_modules/dynamsoft-document-viewer/dist/plugins/ddv-plugin-image-pdf.js"></script>
  ```

or

  ```typescript
  import { DDV } from 'dynamsoft-document-viewer';
  import "dynamsoft-document-viewer/dist/ddv.css";
  ```

  With plugins:

  ```typescript
  import { CameraPlugin } from 'dynamsoft-document-viewer/camera';
  import { AnnotationPlugin } from 'dynamsoft-document-viewer/annotation';
  import { ImagePdfParserPlugin } from 'dynamsoft-document-viewer/imagePdf';
  ```
