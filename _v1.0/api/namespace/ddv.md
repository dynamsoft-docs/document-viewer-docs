---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Namespace - Dynamsoft.DDV
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Namespace, Dynamsoft.DDV
breadcrumbText: Dynamsoft.DDV
description: Dynamsoft Document Viewer Documentation API Reference Namespace Dynamsoft.DDV Page
---

# Dynamsoft.DDV

## Index

**Initialization**

| API Name                        | Description                                       |
| ------------------------------- | ------------------------------------------------- |
| [`<static> setConfig()`](#static-setconfig)           | Initialize license, engineResourcePath and so on. |
| [`<static> setProcessingHandler()`](#static-setprocessinghandler) | Set a processing handler to the DDV system.       |

**Members**

| API Name                        | Description                                       |
| ------------------------------- | ------------------------------------------------- |
| [`<static> documentManager`](#static-documentmanager)   | [`DocumentManager`]({{ site.api }}class/documentmanager.html) instance.   |

**Classes**

- [DocumentManager]({{ site.api }}class/documentmanager.html)
- [EditViewer]({{ site.api }}class/editviewer.html)
- [CaptureViewer]({{ site.api }}class/captureviewer.html)
- [PerspectiveViewer]({{ site.api }}class/perspectiveviewer.html)
- [BrowseViewer]({{ site.api }}class/browseviewer.html)
- [CustomViewer]({{ site.api }}class/customviewer.html)

- Advanced
    - [ImageFilter]({{ site.api }}class/advanced/imagefilter.html)
    - [DocumentDetect]({{ site.api }}class/advanced/documentdetect.html)

**Methods**

| API Name                        | Description                                       |
| ------------------------------- | ------------------------------------------------- |
| [`<static> getDefaultUiConfig()`](#static-getdefaultuiconfig)   | Get default UiConfig object.                      |
| [`<static> clearLastError()`](#static-clearlasterror)       | Clear the last error or warning.                  |
| [`<static> unload()`](#static-unload)               | Unload all DDV resources.                         |

**Properties**

| API Name                        | Description                                       |
| ------------------------------- | ------------------------------------------------- |
| [`<static> lastError `](#static-lasterror)             | Return the last error or warning.                 |

**Events**

| API Name | Description                                        |
| -------- | -------------------------------------------------- |
| [`<static> on()`](static-#on)     | Bind a listener to the specified event.            |
| [`<static> off()`](static-#off)    | Unbind event listener(s) from the specified event. |

***Integrated Events***

| Event Name | Description                         |
| ---------- | ----------------------------------- |
| [`error`](#error)      | Triggered when any error occurs.    |
| [`warning`](#warning)    | Triggered when any warning occurs . |
| [`verbose`](#verbose)    | Triggered when DDV is running.      |

## Initialization

### `<static>` setConfig()

Initialize license, engineResourcePath and so on.

**Syntax**

```typescript
static setConfig(config: Configuration): Promise<ConfigResult>;
```

**Parameters**

`config`: The object which contains license, engineResourcePath and so on. Please refer to [`Configuration`]({{ site.api }}interface/configuration.html).

**Return values**

A Promise [`ConfigResult`]({{ site.api }}interface/configresult.html) object. 

**Code Snippet**

```typescript
await Dynamsoft.DDV.setConfig({
    // Public trial license which is valid for 24 hours
    // You can request a 30-day trial key from https://www.dynamsoft.com/customer/license/trialLicense/?product=ddv
    license: "DLS2eyJvcmdhbml6YXRpb25JRCI6IjIwMDAwMSJ9",
    engineResourcePath: "https://cdn.jsdelivr.net/npm/dynamsoft-document-viewer@1.0.0/dist/engine",
});
```

**Exception**

 Error Code  | Error Message                                        
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.  


### `<static>` setProcessingHandler()

Set a processing handler to the DDV system.

**Syntax**

```typescript
static setProcessingHandler(handlerType: HandlerType, handler: any): void;
```

**Parameters**

`handlerType`: The type of processing handler. 

A `HandlerType` can be one of two types.

```typescript
type HandlerType = "documentBoundariesDetect"|"imageFilter";
```

`handler`: The handler to set. Please refer to [IDocumentDetect]({{ site.api }}interface/idocumentdetect.html) and [IImageFilter]({{ site.api }}interface/iimagefilter.html).

**Exception**

 Error Code  | Error Message                                        
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.  
 -80103 | *XXX(API)*: The value for *XXX(ParameterName)* is not supported.

**Remark**

- Please configure the handler before creating 
- If `documentBoundariesDetect` handler is not set, the default element `Dynamsoft.DDV.Elements.AutoDetect` will be disabled.
- If `imageFilter` handler is not set, the default element `Dynamsoft.DDV.Elements.Filter` will be disabled.
- [How to configure image filter]({{ site.features }}advanced/imagefilter.html)
- [How to configure boundaries detection]({{ site.features }}advanced/documentdetect.html)

## Member

### `<static>` documentManager

[`DocumentManager`]({{ site.api }}class/documentmanager.html) instance.

**Code Snippet**

```typescript
await Dynamsoft.DDV.setConfig({
    license: "Your-License-String",
    engineResourcePath: "Resources/WASM/", // lead to a folder containing the distributed WASM files
});

const docManager = Dynamsoft.DDV.documentManager;
```

## Methods

| API Name                        | Description                                       |
| ------------------------------- | ------------------------------------------------- |
| [`<static> getDefaultUiConfig()`](#static-getdefaultuiconfig)   | Get default UiConfig object.                      |
| [`<static> clearLastError()`](#static-clearlasterror)       | Clear the last error or warning.                  |
| [`<static> unload()`](#static-unload)               | Unload all DDV resources.                         |

### `<static>` getDefaultUiConfig()

Get default UiConfig object.

**Syntax**

```typescript
static getDefaultUiConfig(viewerType: ViewerType): UiConfig | null;
```

**Parameters**

`viewerType`: A `ViewerType` can be one of four types.

```typescript
type ViewerType = "editViewer"|"captureViewer"|"perspectiveViewer"|"browseViewer";
```

**Return Values**

The [default UiConfig]({{ site.ui }}default_ui.html) object for each kind of viewer.

**Code Snippet**

```typescript
const defaultEditUi = Dynamsoft.DDV.getDefaultUiConfig("editViewer");
```

**Warning**

 Error Code  | Error Message                                                           | API Return Value
--------|------------------------------------------------------------------------|----------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.                      | `null`
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.                     | `null`
 -80103 | *XXX(API)*: The value for *XXX(ParameterName)* is not supported.| `null`

### `<static>` clearLastError()

Clear the last error or warning.

**Syntax**

```typescript
static clearLastError(): void;
```

**Remark**

- Once called this method, [`lastError`](#static-lasterror) will return `undefined`.

### `<static>` unload()

Unload all DDV resources.

**Syntax**

```typescript
static unload(): void;
```

## Properties

| API Name                        | Description                                       |
| ------------------------------- | ------------------------------------------------- |
| [`<static> lastError `](#static-lasterror)             | Return the last error or warning.                 |

### `<static>` lastError

Return the last error or warning.

**Syntax**

```typescript
static readonly lastError: DDVError;
```

**Return Values**

A [`DDVError`]({{ site.api }}interface/ddverror.html) object.

## Events

| API Name | Description                                        |
| -------- | -------------------------------------------------- |
| [`<static> on()`](#static-on)     | Bind a listener to the specified event.            |
| [`<static> off()`](#static-off)    | Unbind event listener(s) from the specified event. |

### `<static>` on()

Bind a listener to the specified event. 

**Syntax**

```typescript
static on(eventName: EventName, listener:(event:EventObject)=>void): void;
```

**Parameters**

`eventName`: Specify the event name. It should be [an integrated event name](#integrated-events).

`listener`: Specify the listener.

**Code Snippet**

```typescript
Dynamsoft.DDV.on("error", (e)=>{
    console.log(e.message, e.cause);
});
```

**Exception**

 Error Code  | Error Message                                        
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.  
 -80103 | *XXX(API)*: The value for *XXX(ParameterName)* is not supported.

### `<static>` off()

Unbind event listener(s) from the specified event. 

**Syntax**

```typescript
static off(eventName: EventName, listener?:(event:EventObject)=>void): void;
```

**Parameters**

`eventName`: Specify the event name. It should be [an integrated event name](#integrated-events).

`listener`: Specify the listener. If no listener is specified, unbind all event listeners from the specified event.

**Code Snippet**

```typescript
Dynamsoft.DDV.off("error");
```

**Exception**

 Error Code  | Error Message                                        
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid.   
 -80102 | *XXX(API)*: *XXX(ParameterName)* is missing.  
 -80103 | *XXX(API)*: The value for *XXX(ParameterName)* is not supported.

### Integrated Events

| Event Name | Description                         |
| ---------- | ----------------------------------- |
| [`error`](#error)      | Triggered when any error occurs.    |
| [`warning`](#warning)    | Triggered when any warning occurs . |
| [`verbose`](#verbose)    | Triggered when DDV is running.      |

#### error

Triggered when any error occurs. 

**Callback**

An EventObject which contains the detailed error info.

**Attributes**

[`DDVError`]({{ site.api }}interface/ddverror.html): Detailed error info.

#### warning

Triggered when any warning occurs. 

**Callback**

An EventObject which contains the detailed warning info.

**Attributes**

[`DDVError`]({{ site.api }}interface/ddverror.html): Detailed warning info.

#### verbose

Triggered when DDV is running.

**Callback**

EventObject array which contain the detailed verbose info.

**Example**

```typescript
Dynamsoft.DDV.on("verbose", (...args) => { 
    console.log(...args); 
    if (args[0].cause) { 
        console.error(args[0].cause); 
    } 
});
```