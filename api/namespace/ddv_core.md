---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer API Reference - Namespace - Dynamsoft.DDV.Core
keywords: Documentation, Dynamsoft Document Viewer, API Reference, Namespace, Dynamsoft.DDV.Core
breadcrumbText: Dynamsoft.DDV.Core
description: Dynamsoft Document Viewer Documentation API Reference Namespace Dynamsoft.DDV.Core Page
permalink: /api/namespace/ddv_core.html
---

# Dynamsoft.DDV.Core

## API Index

**Properties**

| API Name             | Description                                                  |
| -------------------- | ------------------------------------------------------------ |
| [`engineResourcePath`](#engineresourcepath) | Specify the path should lead to a folder containing the distributed WASM files. |
| [`license` ](#engineresourcepath)           | Specify the license string.                                  |
| [`deviceFriendlyName`](#devicefriendlyname) | Specify a human-readable name for the device which corresponds to its UUID. |

**Methods**

| API Name     | Description                            |
| ------------ | -------------------------------------- |
| [`loadWasm()`](#loadwasm) | Load WASM modules before initializing. |
| [`init()`](#init)     | Initialize DDV.                        |

## Properties

### engineResourcePath

Specify the path should lead to a folder containing the distributed WASM files.

**Syntax**

```typescript
engineResourcePath: string;
```

**Code Snippet**

```typescript
Dynamsoft.DDV.Core.engineResourcePath = "https://cdn.jsdelivr.net/npm/dynamsoft-document-viewer@latest/dist/engine";
```

**Exception**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid. 

### license

Specify the license string.

**Syntax**

```typescript
license: string;
```

**Code Snippet**

```typescript
// Public trial license which is valid for 24 hours
// You can request a 30-day trial key from https://www.dynamsoft.com/customer/license/trialLicense/?product=ddv
Dynamsoft.DDV.Core.license = "DLS2eyJvcmdhbml6YXRpb25JRCI6IjIwMDAwMSJ9";
```

**Exception**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid. 

### deviceFriendlyName

Specify a human-readable name for the device which corresponds to its UUID. This name will appear in the device details table when you check the statistics of the according license. 

**Syntax**

```typescript
deviceFriendlyName: string;
```

**Code Snippet**

```typescript
Dynamsoft.DDV.Core.deviceFriendlyName = "xxxxxxx";
```

**Exception**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80100 | *XXX(API)*: *XXX(ParameterName)* is invalid. 

**Remark**

- Default value is `''`.

## Methods

### loadWasm()

Load WASM modules before initializing.

**Syntax**

```typescript
loadWasm():Promise<void>;  
```

**Code Snippet**

```typescript
Dynamsoft.DDV.Core.loadWasm(); 

//OR
await Dynamsoft.DDV.Core.loadWasm(); 
```

**Promise Exception**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80052 | *XXX(API)*: Resource is not found from the specified engineResourcePath.


### init()

Initialize DDV.

**Syntax**

```typescript
init():Promise<ConfigResult>;
```

**Return values**

A Promise [`ConfigResult`](https://www.dynamsoft.com/document-viewer/docs/api/interface/configresult.html) object. 

**Code Snippet**

```typescript
Dynamsoft.DDV.Core.engineResourcePath = "xxxxxxx";
Dynamsoft.DDV.Core.loadWasm(); 
Dynamsoft.DDV.Core.license = "xxxxxxx";
await Dynamsoft.DDV.Core.init(); 
```

**Promise Exception**

 Error Code  | Description                                         
--------|-----------------------------------------------------
 -80052 | *XXX(API)*: Resource is not found from the specified engineResourcePath.
