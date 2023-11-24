---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - DocumentDetect Class
keywords: Documentation, Dynamsoft Document Viewer, API Reference, DocumentDetect Class
breadcrumbText: DocumentDetect Class
description: Dynamsoft Document Viewer Documentation API Reference DocumentDetect Class Page
permalink: /api/class/advanced/documentdetect.html
---

# DocumentDetect Class

`DocumentDetect` implements [`IDocumentDetect`]({{ site.api }}interface/idocumentdetect.html). 

This class is used to configure document boundaries detection feature in capture viewer. Please refer to [How to configure boundaries detection]().

The APIs for this class include:

 API Name                   | Description                                 
----------------------------|---------------------------------------------
 [`detect()`](#detect)                   | Detect the boundaries quadrangle.                   
 [`processDetectResult()`](#processdetectresult)      | Process the detected result.                
 [`getStatusMsg()`](#getstatusmsg)             | Get the message of status during detection. 
 [`calculateConfidence()`](#calculateconfidence)      | Calculate individual confidence.            
 [`calculateTotalConfidence()`](#calculatetotalconfidence) | Calculate total confidence.                 

## detect()

Detect the boundaries quadrangle.

**Syntax**

```typescript
detect(image: VImageData, config?: DocumentDetectConfig): Promise<DocumentDetectResult>;
```

**Parameters**

`image`: The image to detect boundaries. Please refer to [`VImageData`]({{ site.api }}interface/vimagedata.html).

`config`: The configuration of document detect. Please refer to [`DocumentDetectConfig`]({{ site.api }}interface/documentdetectconfig.html).

**Return Value**

A promise resolving to an [`DocumentDetectResult`]({{ site.api }}interface/documentdetectresult.html) object that contains the detected result.

**Remark**

The border detection process will periodically call the custom detect method to obtain the detected result.

![DocumentDetect_detect](/assets/imgs/DocumentDetect_detect.png)

## processDetectResult()

Process the detected result.

**Syntax**

```typescript
processDetectResult(location: Quad, width: number, height: number, config: DocumentDetectConfig): DocumentDetectResult;
```

**Parameters**

`location`: The result of boundaries quadrangle. Please refer to [`Quad`]({{ site.api }}enumeration-type/quad.html).

`width`: The width of image. 

`height`: The height of image.

`config`: The configuration of document detect. Please refer to [`DocumentDetectConfig`]({{ site.api }}interface/documentdetectconfig.html).

**Return Value**

A promise resolving to an [`DocumentDetectResult`]({{ site.api }}interface/documentdetectresult.html) object that contains the detected result.

## getStatusMsg()

Get the message of status during detection. 

**Syntax**

```typescript
getStatusMsg(status: EnumDocumentDetectionStatus): string;
```

**Parameters**

`status`: The status during detection. Please refer to [`EnumDocumentDetectionStatus`]({{ site.api }}enumeration-type/enumdocumentdetectionstatus.html).

**Return Value**

The status message string.

## calculateConfidence()

**Syntax**

```typescript
calculateConfidence(location: Quad, width: number, height: number): DocumentDetectConfidence;
```

**Parameters**

`location`: The result of boundaries quadrangle. Please refer to [`Quad`]({{ site.api }}enumeration-type/quad.html).

`width`: The width of image. 

`height`: The height of image.

**Return Value**

An [`DocumentDetectConfidence`]({{ site.api }}interface/documentdetectconfidence.html) object that contains the detected result.


## calculateTotalConfidence()

**Syntax**

```typescript
calculateTotalConfidence(conf: DocumentDetectConfidence): number;
```

**Parameters**

`conf`: The confidence of document boundaries detection. Please refer to [`DocumentDetectConfidence`]({{ site.api }}interface/documentdetectconfidence.html).

**Return Value**

Number of total confidence.


