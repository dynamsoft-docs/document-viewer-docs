---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer Getting Started - Creating HelloWorld
keywords: Documentation, Dynamsoft Document Viewer, Getting Started, Creating HelloWorld
breadcrumbText: Creating HelloWorld
description: Dynamsoft Document Viewer Documentation Getting Started, Creating HelloWorld
permalink: /gettingstarted/helloworld.html
---

# Creating HelloWorld

In this section, we’ll break down and show all the steps needed to build the HelloWorld.

![Hello World](/assets/imgs/helloWorld.GIF)

We’ll build on this skeleton page:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>DDV - HelloWorld</title>
</head>
<body>
</body>
<script type="module">
// Write your code here
</script>
</html>
```

## Adding the dependency

Please refer to [Adding the dependency]({{ site.gettingstarted }}add_dependency.html).

## Define necessary HTML elements

For HelloWorld, we define below elements.

- Container to hold the viewer

```html
<div id="container"></div>
```

- Container's style

```html
<style>
    html,body {
        width: 100%;
        height: 100%;
        margin:0;
        padding:0;
        overscroll-behavior-y: none;
        overflow: hidden;
    }

    #container {
        width: 100%;
        height: 100%;
    }
</style>
```

## SDK initialization

```javascript
// Initialize DDV
await Dynamsoft.DDV.setConfig({
    license: "your-own-license",
    engineResourcePath: "https://cdn.jsdelivr.net/npm/dynamsoft-document-viewer@latest/dist/engine",
});
```

## Create an edit viewer

```javascript
const editViewer = new Dynamsoft.DDV.EditViewer({
    container: "container",
});
```

## Review the complete code

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>DDV - HelloWorld</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/dynamsoft-document-viewer@latest/dist/ddv.css">
    <script src="https://cdn.jsdelivr.net/npm/dynamsoft-document-viewer@latest/dist/ddv.js"></script>
</head>
<style>
    html,body {
        width: 100%;
        height: 100%;
        margin:0;
        padding:0;
        overscroll-behavior-y: none;
        overflow: hidden;
    }

    #container {
        width: 100%;
        height: 100%;
    }
</style>
<body>
    <div id="container"></div>
</body>
<script type="module">
    (async () => {
        await Dynamsoft.DDV.setConfig({
            license: "your-own-license",
            engineResourcePath: "https://cdn.jsdelivr.net/npm/dynamsoft-document-viewer@latest/dist/engine",
        });
        const editViewer = new Dynamsoft.DDV.EditViewer({
            container: "container",
        });
    })();
</script>
</html>
```