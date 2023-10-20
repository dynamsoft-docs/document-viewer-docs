---
layout: default-layout
needAutoGenerateSidebar: true
title: Dynamic Web TWAIN SDK Remote Scan API Reference - RemoteScanObject APIs
keywords: Dynamic Web TWAIN, Documentation, Remote Scan, API Reference, RemoteScanObject APIs
breadcrumbText: Device
description: Dynamic Web TWAIN SDK Remote Scan Documentation API Reference RemoteScanObject APIs Page
permalink: /api/remotescanobject.html
needGenerateH3Content: true
---

# {RemoteScanObject} 

> The methods and events on this page live in {RemoteScanObject}.

---

## Scanner

**Method**

### getDynamsoftService

Get all active Dynamsoft Service.

**Syntax**

```typescript
getDynamsoftService(forceRefresh?: boolean): Promise<ServiceInfo[]>;;
```

**Parameters**

`forceRefresh`: Default value is false.

---

### getDevices

Based on parameters, return all eligible scan devices.

**Syntax**

```typescript
getDevices(deviceQueryParams?:{serviceInfo?: ServiceInfo, deviceType?: Dynamsoft.DWT.EnumDWT_DeviceType, refresh?: boolean}): Promise<Device[]>;
```

**Parameters**

`serviceInfo`: The service information. Please refer to [ServiceInfo]({{site.api}}Interfaces.html#serviceinfo).

`deviceType`: The value to filter scanners. Default: TWAINSCANNER. Please refer to [EnumDWT_DeviceType]({{site.api}}Dynamsoft_Enum.html#dynamsoftdwtenumdwt_devicetype).

`refresh`: Default value is false.

---

### acquireImage

Scan documents into RemoteScanObject.

**Syntax**

```typescript
acquireImage(device: Device, deviceConfiguration?: DeviceConfiguration) : Promise<void>;
```

**Parameters**

`deviceConfiguration`: The device configuration. Please refer to [DeviceConfiguration]({{site.api}}Interfaces.html#deviceconfiguration)

---

### setDefaultDynamsoftService

Set the default service which is used to store the scanned image data.

**Syntax**

```typescript
setDefaultDynamsoftService(serviceInfo: ServiceInfo):Promise<void>;
```

**Parameters**

`serviceInfo`: The service information. Please refer to [ServiceInfo]({{site.api}}Interfaces.html#serviceinfo).

**Remark**

If the specified service is not working, the default service will keep to the last set one. If the default service is never set, it will return `null`.
If `setDefaultDynamsoftService` is not called, the default service will be set to the first working service automatically when scanning.

---

### getDefaultDynamsoftService

Get the default service info.

**Syntax**

```typescript
getDefaultDynamsoftService(): ServiceInfo|null;
```

---

### getCapabilities

Gets detailed information about all capabilities of the current data source.

**Syntax**

```typescript
getCapabilities(device: Device): Promise<CapabilityDetails[]>;
```
 
**Parameters**

`device`: Please refer to [Device]({{site.api}}Interfaces.html#device).

**Argument**

`CapabilityDetails`: Please refer to [CapabilityDetails]({{site.api}}Interfaces.html#capabilitydetails).

---

### setCapabilities

Sets up one or multiple capabilities in one call.

**Syntax**

```typescript
setCapabilities(device: Device, capabilities: Capabilities): Promise<void>;
```
 
**Parameters**

`device`: Please refer to [Device]({{site.api}}Interfaces.html#device).

`capabilities`: An object that describes how to set capabilities. Please refer to [Capabilities]({{site.api}}Interfaces.html#capabilities).

---

### closeSource

Close the data source to free it to be used by other applications.

**Syntax**

```typescript
closeSource(device: Device): Promise<void>;
```
 
**Parameters**

`device`: Please refer to [Device]({{site.api}}Interfaces.html#device).

---

### getProfile

Gets custom scanner profile and returns it in a base64 string.

**Syntax**

```typescript
getProfile(device: Device): Promise<string>;
```
 
**Parameters**

`device`: Please refer to [Device]({{site.api}}Interfaces.html#device).

---

### setProfile

Set custom scanner profile to be used for scanning, the input is a base64 string.

**Syntax**

```typescript
setProfile(device: Device, dsDataString: string): Promise<void>;
```
 
**Parameters**

`device`: Please refer to [Device]({{site.api}}Interfaces.html#device).

`dsDataString`: The base64 string that contains custom scanner profile.

---

**Event**

### onPostTransferAsync

This event is triggered after each page has been scanned and transferred.

**Syntax**

```typescript
registerEvent("onPostTransferAsync", function (outputInfo: OutputInfo) {});
```

**Arguments**

`outputInfo`: Detailed information about the image that just got transferred. Please refer to [OutputInfo]({{site.api}}Interfaces.html#outputinfo).

**Example**

```javascript
RemoteScanObject.registerEvent("onPostTransferAsync", function (outputInfo) {
  console.log("The image ID is " + outputInfo.imageId);
});
```

---

## Buffer

**Method**

### howManyImagesInBuffer

Return how many images are held in the buffer.

**Syntax**

```typescript
readonly howManyImagesInBuffer: number;
```

---

### currentImageIndexInBuffer

Return the index of the current image in the buffer or set the image specified by index as the current image.

**Syntax**

```typescript
currentImageIndexInBuffer: number;
```

---

### imageIDToIndex

Return the index of an image specified by the imageId.

**Syntax**

```typescript
imageIDToIndex(imageId: number): number;
```
 
**Parameters**

`imageId`: The imageId of the image.

---

### indexToImageID

Return the imageId of an image specified by the index.

**Syntax**

```typescript
indexToImageID(index: number): number;
```
 
**Parameters**

`index`: The index of the image.

---

### removeImages

Remove the specified images.

**Syntax**

```typescript
removeImages(indices: number[]): Promise<void>;
```
 
**Parameters**

`indices`: The array of specified indices.

---

**Event**

### onBufferChanged

An enhanced callback triggered when a change occurs in the buffer.

**Syntax**

```typescript
registerEvent('onBufferChanged',
    function (bufferChangeInfo: BufferChangeInfo) {}
): boolean;
```

**Arguments**

`bufferChangeInfo`: Details about the buffer change. Please refer to [BufferChangeInfo]({{site.api}}Interfaces.html#bufferchangeinfo).

**Usage notes**

Action types include

- `add`: New pages are added to the buffer.
- `remove`: The existing pages are removed.
- `modify`: The existing pages are modified.
- `shift`: The existing pages are reordered.
- `filter`: The existing pages are filtered by a tag.

---

## IO

### getImages

Get the url/blob/base64 string of specified images.

**Syntax**

```typescript
getImages(indices: number[], type: Dynamsoft.DWT.EnumDWT_ImageType, imageFormatType: Dynamsoft.DWT.EnumDWT_ImageFormatType):Promise<Blob|string>;
```
 
**Parameters**

`indices`: The array of specified indices.

`type`: Specify the image type. Please refer to [EnumDWT_ImageType](Dynamsoft_Enum.html#dynamsoftdwtenumdwt_imagetype).

`imageFormatType`: Specify image format to obtain. Please refer to [EnumDWT_ImageFormatType](Dynamsoft_Enum.html#dynamsoftdwtenumdwt_imageformattype).

---

### httpUpload

**Syntax**

```typescript
httpUpload(
    URL: string,
    indices: number[],
    type: Dynamsoft.DWT.EnumDWT_ImageType,
    dataFormat: Dynamsoft.DWT.EnumDWT_UploadDataFormat,
    fileName: string,
    optionConfig?:{
      responseType?: Dynamsoft.DWT.EnumDWT_ResponseType, 
      formFields?:[{ 
        name: string,
        value: Blob,
        fileName?: string
      }],
      headers?:[{
      name: string,
      value: string
      }]
    }
): Promise<httpResponse: any>;

```
 
**Parameters**

`URL`: The server-side script to receive the post. For the sample code of Server Script, please refer to [Upload-Server-Script](https://www.dynamsoft.com/web-twain/docs/indepth/development/Server-script.html#how-to-process-uploaded-files).

`indices`: Specify the image(s).

`type`: The format of the file. Please refer to [EnumDWT_ImageType]({{site.info}}Dynamsoft_Enum.html#dynamsoftdwtenumdwt_imagetype).

`dataFormat`: Whether to upload the file as binary or a base64 string. Please refer to [EnumDWT_UploadDataFormat]({{site.info}}Dynamsoft_Enum.html#dynamsoftdwtenumdwt_uploaddataformat).

`fileName`: The file name to upload.

`responseType`: Please refer to [EnumDWT_ResponseType]({{site.info}}Dynamsoft_Enum.html#dynamsoftdwtenumdwt_responsetype).

---

### saveImages

**Syntax**

```typescript
saveImages(fileName: string, indices: number[], type: Dynamsoft.DWT.EnumDWT_ImageType):Promise<void>;
```
 
**Parameters**

`fileName`: The file name to save.

`indices`: The array of specified indices.

`type`: Specify the image type. Please refer to [EnumDWT_ImageType](Dynamsoft_Enum.html#dynamsoftdwtenumdwt_imagetype).



---

### showProgressBar

Return or set whether the progress bar is/should be displayed during encoding or decoding.

**Syntax**

```typescript
showProgressBar: Boolean;  //default: true 
```

---

## Util

### registerEvent

Specify an event listener for the specified built-in event.

**Syntax**

```typescript
registerEvent(name: string, callback: () => void): boolean;
```
 
**Parameters**

`name`: Specify the event.

`callback`: The event listener.

---

### unregisterEvent

Remove an event listener from the specified built-in event.

**Syntax**

```typescript
unregisterEvent(name: string, callback: () => void): boolean;
```
 
**Parameters**

`name`: Specify the event.

`callback`: The event listener.

---

### dispose

Dispose RemoteScanObject.

**Syntax**

```typescript
dispose(): boolean;
```

---

### setLogLevel

Set the log level for debugging.

**Syntax**

```typescript
setLogLevel(value: number):boolean;
```
 
**Parameters**

`value`: 0 means turn off collecting log, 1 means turn on collecting log.
