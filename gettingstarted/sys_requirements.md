---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer Getting Started - System Requirements
keywords: Documentation, Dynamsoft Document Viewer, Getting Started, System Requirements
breadcrumbText: System Requirements
description: Dynamsoft Document Viewer Documentation Getting Started, System Requirements
permalink: /gettingstarted/sys_requirement.html
---


# System Requirements

The SDK requires the following features to work:

- Secure context (HTTPS deployment)

  When deploying your application / website for production, make sure to serve it via a secure HTTPS connection. This is required for two reasons
  
  - Access to the camera video stream is only granted in a security context. Most browsers impose this restriction.
  > Some browsers like Chrome may grant the access for `http://127.0.0.1` and `http://localhost` or even for pages opened directly from the local disk (`file:///...`). This can be helpful for temporary development and test.
  
  - Dynamsoft License requires a secure context to work.

- `WebAssembly`, `Blob`, `URL`/`createObjectURL`, `Web Workers`

  The above four features are required for the SDK to work.

The following table is a list of supported browsers based on the above requirements:

  | Browser Name |             Version              |
  | :----------: | :------------------------------: |
  |    Chrome    |             v75+                 |
  |   Firefox    |             v65+                 |
  |    Safari    |             v14+                 |
  |     Edge     |             v75+                 |

Apart from the browsers, the operating systems may impose some limitations of their own that could restrict the use of the SDK.