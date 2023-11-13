---
layout: default-layout
needAutoGenerateSidebar: true
noTitleIndex: true
title: Dynamsoft Document Viewer Features - Page Management
keywords: Documentation, Dynamsoft Document Viewer, Features, Page Management
breadcrumbText: Document Management
description: Dynamsoft Document Viewer Documentation Features, Page Management
permalink: /features/datamanagement/pagemanagement.html
---

# Page Management




## Load pages

`loadSource()` is used to load file(s) into the document. 

**Use case**

- Load a image file in order

    ```typescript
    // Create a document
    const docManager = DDV.documentManager;
    const firstDoc = docManager.createDocument({
        name: "first_document",
        author: "DDV",
        creationDate: "D:20230101085959",
    });

    //Load a file
    var blob = /*Sample image blob*/;
    await firstDoc.loadSource(blob);
    ```

- Load a image file and insert it into the specified order

    ```typescript
    var blob = /*Sample image blob*/;

    // Load and insert to the beginning of the document
    await firstDoc.loadSource(blob, 0);
    ```

- Load multiple files at one time

- Load a PDF file



- Load 

## Save pages

**Use case**

- Save page as a JPEG file

    ```typescript
    // Save the first page in the doc to a JPEG file with JPEG compression quality 60.
    const settings = {
        quality: 60, // The default quality is 80.
    };
    const result = await firstDoc.saveToJpeg(0, settings);

    // Save the second page in the doc to a JPEG file with default JPEG compression quality
    const result = await firstDoc.saveToJpeg(1);
    ```

- Save page(s) as a TIFF file

    ```typescript
    // Set custom Tag of the tiff file
    const customTag1 = {
    id: 700,
    content: "Created By Dynamsoft",
    contentIsBase64: false,
    }

    // Set SaveTiffSettings
    const tiffSettings = {
        customTag: [customTag1],
        compression: "tiff/auto",
    }

    // Save the fifth, sixth, seventh pages to a multi-page TIFF file with the specified tiff settings.
    await firstDoc.saveToTiff([4,5,6], tiffSettings);

    // Save the whole document to a multi-page TIFF file with the specified tiff settings.
    await firstDoc.saveToTiff(tiffSettings);

    // Save the whole document to a multi-page TIFF file without any tiff settings.
    await firstDoc.saveToTiff();
    ```

- Save page(s) as a PDF file

## Move or switch pages

**Use case**

- Move pages to the specified order

- Move pages to the end

- Switch the order of the first page and third page 


## Update page data

## Set/get custom data to page

## Delete pages

**Use case**

- Delete specified page(s)

- Delete all pages


