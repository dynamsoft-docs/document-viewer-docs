---
layout: default-layout
title: Dynamsoft Document Viewer Enumeration
keywords: Dynamsoft Document Viewer, Enumeration
breadcrumbText: Interface
description: Dynamsoft Document Viewer Enumeration
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---

# Enumeration

## VDocumentType

The type of the document.

**Members**

 Member   | Value | Description 
----------|-------|-------------
 DOCUMENT |       |             
 VIDEO    |       |             
 AUDIO    |       |             

---

## SourceMIME

The MIME type of the source file.

**Members**

 Member   | Value | Description 
----------|-------|-------------
 IMAGE_PNG|       |             
 IMAGE_JPEG|       |             
 IMAGE_BMP|       |   
 IMAGE_WEBP|       |   
 IMAGE_TIFF|       |
 APPLICATION_PDF|       |

---

## Direction

**Members**

 Member     | Value | Description 
------------|-------|-------------
 HORIZONTAL |       |             
 VERTICAL   |       |             

---

## DisplayMode



---

## ToolType



---

## FitType


---

## ZoomOriginValue



---

## TabMode

export declare const enum ToolType {
	DEFAULT = "default",
	CROP = "crop",
	ZOOM_IN = "zoomIn",
	ZOOM_OUT = "zoomOut",
	ANNOTATION = "annotation"
}
export declare const enum DisplayMode {
	SINGLE = "single",
	MULTIPLE = "multiple",
	DOCUMENT = "doc",
	SLIDE = "slide"
}
export declare const enum FitType {
	NONE = "none",
	WIDTH = "width",
	HEIGHT = "height",
	WINDOW = "window"
}

declare enum ZoomOriginValue {
	START = "start",
	CENTER = "center",
	END = "end"
}
export declare const enum TabMode {
	SINGLE = "single",
	MULTIPLE = "multiple"
}