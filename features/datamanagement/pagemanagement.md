---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer Features - Page Management
keywords: Documentation, Dynamsoft Document Viewer, Features, Page Management
breadcrumbText: Page Management
description: Dynamsoft Document Viewer Documentation Features, Page Management
permalink: /features/datamanagement/pagemanagement.html
---

# Page Management

DDV is using [`Interface IDocument`]({{ site.api }}interface/idocument/index.html) to manage the page data. 


## Load pages

[`loadSource()`]({{ site.api }}interface/idocument/index.html#loadsource) is used to load file(s) into the document. 

**Use case**

- Load a image file in order

    ```typescript
    // Create a document
    const docManager = Dynamsoft.DDV.documentManager;
    const firstDoc = docManager.createDocument({
        name: "first_document",
        author: "DDV",
        creationDate: "D:20230101085959",
    });

    //Load a file
    var blob = /*Sample image blob*/;
    await firstDoc.loadSource(blob);
    ```

- Load a image file and insert it into the specified order if there are pages in the document.

    ```typescript
    var blob = /*Sample image blob*/;

    // Load and insert to the beginning of the document
    await firstDoc.loadSource(blob, 0);
    ```

- Load multiple files at one time

    ```typescript
    var blobs = /*Sample image blob array*/;
    await firstDoc.loadSource(blobs);
    ```

- Load a PDF file by using PDFSource



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

    ```typescript
    
    ```

## Move or switch pages

**Use case**

- Move pages to the specified order

    ```typescript
    // Move the second, fourth, sixth pages to the begining of the doc. 
    // The moved pages are in (original sixth, fourth, second) order.
    firstDoc.movePages([5,3,1], 0);
    ```

    ![Move pages-1](/assets/imgs/movepages-1.png)

- Move pages to the end

    ```typescript
    // Move the first and second page to the end of the doc.
    firstDoc.movePages([0,1]);
    ```
  ![Move pages-2](/assets/imgs/movepages-2.png)

- Switch the order of two pages

    ```typescript
    // Switch the order of the first page and third page 
    firstDoc.switchPage(0,3);
    ```

## Get/update page data

## Set/get custom data to page

## Delete pages

**Use case**

- Delete specified page(s)

    ```typescript
    // Delete the second and third pages
    firstDoc.deletePages([1,2]);
    ```

- Delete all pages

    ```typescript
    firstDoc.deleteAllPages();
    ```


