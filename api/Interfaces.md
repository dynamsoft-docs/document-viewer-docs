---
layout: default-layout
needAutoGenerateSidebar: true
title: Dynamic Web TWAIN SDK Remote Scan API Reference - Interfaces
keywords: Dynamic Web TWAIN, Documentation, Remote Scan, API Reference, Interfaces
breadcrumbText: Utility
description: Dynamic Web TWAIN SDK Remote Scan Documentation API Reference Interfaces Page
permalink: /api/interfaces.html
---

# Interfaces

---

## ServiceInfo

**Syntax**

```typescript
interface ServiceInfo {
   server: string;
   attrs?: any
}
```

---

## Device

**Syntax**

```typescript
interface Device {
   name: string;
   displayName: string;
   deviceType: DeviceType;
   serviceInfo?: ServiceInfo;
   deviceInfo?: any;
}
```

---

## DeviceConfiguration

**Syntax**

```typescript
interface DeviceConfiguration {
    PageSize?: Dynamsoft.DWT.EnumDWT_CapSupportedSizes; // Scanned page size
    PixelType?: Dynamsoft.DWT.EnumDWT_PixelType; //Whether to scan in color, grey or black & white
    Resolution?: number; //Measured by dots per pixel (DPI)
    IfFeederEnabled?: boolean; //Whether to use the document feeder or the flatbed of the device
    IfDuplexEnabled?: boolean; //Whether to scan one side or both sides
    IfDisableSourceAfterAcquire?: boolean; //Whether to close the built-in User Interface after aquisition. Only valid when {IfShowUI} is true.
    IfGetImageInfo?: boolean; //Whether to retrieve information about the image after it's transferred.
    IfGetExtImageInfo?: boolean; //Whether to retrieve extended information about the image after it's transferred.
    extendedImageInfoQueryLevel?: Dynamsoft.DWT.EnumDWT_ExtImageInfo; //How much extended information is retrieved. Only valid when {IfGetExtImageInfo} is true.
    IfCloseSourceAfterAcquire?: boolean; //Whether to close the data source after aquisition. Default: true.
}

```

Please refer to [EnumDWT_CapSupportedSizes](Dynamsoft_Enum.html#dynamsoftdwtenumdwt_capsupportedsizes) and [EnumDWT_PixelType](Dynamsoft_Enum.html#dynamsoftdwtenumdwt_pixeltype).

## rect

**Syntax**

```typescript
interface rect{
    // The index of the selected area. The index is 0-based. This is useful when you have multiple selected areas on one page.
    index?: number;
    // The x-coordinate of the upper-left corner of the area.
    x: number;
    // The y-coordinate of the upper-left corner of the area.
    y: number;
    // The width of the selected area.
    width: number;
    // The height of the selected area.
    height: number;
}
```

## CapabilityDetails

Detailed information about a specific capability.

**Syntax**

```typescript
interface CapabilityDetails {
    /**
     * The Capability.
     */
    capability: ValueAndLabel;
    /**
     * The container type of the Capability
     */
    conType?: ValueAndLabel;
    /**
     * The index for the current value of the Capability
     */
    curIndex?: number;
    /**
     * The current value of the Capability
     */
    curValue?: ValueAndLabel;
    /**
     * The index for the default value of the Capability
     */
    defIndex?: number;
    /**
     * The operation types that are supported by the Capability. Types include {"get", "set", "reset" "getdefault", "getcurrent"}
     */
    query?: string[];
    /**
     * The value type of the Capability. Value types include
        TWTY_BOOL: 6
        TWTY_FIX32: 7
        TWTY_FRAME: 8
        TWTY_INT8: 0
        TWTY_INT16: 1
        TWTY_INT32: 2
        TWTY_STR32: 9
        TWTY_STR64: 10
        TWTY_STR128: 11
        TWTY_STR255: 12
        TWTY_UINT8: 3
        TWTY_UINT16: 4
        TWTY_int: 5
     */
    valueType?: ValueAndLabel;
    /**
     * The available values of the Capability
     */
    values?: ValueAndLabel[];
}
```

## Capabilities

**Syntax**

```typescript
interface Capabilities {
    /**
     * Whether to "ignore" or "fail" the request if an exception occurs. This is an overall setting that is inherited by all capabilities.
     */
    exception: string;
    /**
     * Specifies how to set capabilities
     */
    capabilities: CapabilitySetup[]
}
```

## CapabilitySetup

**Syntax**

```typescript
interface CapabilitySetup {
    /**
     * Specify a capability
     */
    capability: Dynamsoft.DWT.EnumDWT_Cap;
    /**
     * The value to set to the capability or the value of the capability after setting.
     */
    curValue: number | string; //array is not supported
    errorCode?: number;
    errorString?: string;
    /**
     * Whether to "ignore" or "fail" the request if an exception occurs when setting this specific capability.
     */
    exception? : string;
}
```

Please refer to [EnumDWT_Cap](Dynamsoft_Enum.html#dynamsoftdwtenumdwt_cap).

## BufferChangeInfo

**Syntax**

```typescript
interface BufferChangeInfo {
    /**
     * Action type includes 'add', 'remove', 'modify', 'shift' and 'filter'
     */
    action: string;
    /**
     * The image id (not the index) of the current page.
     */
    currentId: number;
    /**
     * All image ids.
     */
    imageIds: number[];
    /**
     * All selected image ids.
     */
    selectedIds: number[];
}
```

## OutputInfo

**Syntax**

```typescript
interface OutputInfo {
  /**
   * Id of the image if it's transferred to the buffer.
   */
  imageId?: number;
  /**
   * Path of the image if it's transferred to the disk.
   */
  Path?: string;
  /**
   * Information about the image.
   */
  imageInfo?: object;
  /**
   * Extended information about the image.
   */
  extendedImageInfo?: object;
}
```