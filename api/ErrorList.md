---
layout: default-layout
needAutoGenerateSidebar: true
title: Dynamic Web TWAIN SDK Remote Scan API - Error List
keywords: Dynamic Web TWAIN, Documentation, Remote Scan, Error List
breadcrumbText: API Error List
description: Dynamic Web TWAIN SDK Remote Scan Documentation API Error List Page
permalink: /api/ErrorList.html
---

# API Appendix

## Error List

| Error Code | Error Message |
|:-|:-|
|-2398 | {API} is not supported for the current scanner. |
|-2436 | Mixed Content: The page at {URL} was loaded over HTTPS, but requested an insecure resource {serverUrl}/ddm/18625/ddm/SearchScanner. This request has been blocked; the content must be served over HTTPS. |
|-2444 | A license can only be specified once and has already been set using the ProductKey API. |
|-2543 | You are using two different generations of Dynamsoft licenses. Please check the "Dynamsoft.DWT.ProductKey" specified in your application. |
|-2544 | The method SelectDeviceAsync() must be invoked before the current operation. |
|-2545 | The proxy server URL is invalid. |
|-2546 | The license is invalid. |
|-2601 | Failed to connect to the Dynamsoft Service. Please make sure Dynamsoft Service is running or the certificate is valid. |
|-2602 | The parameter "SendTo" is invalid. |
|-2603 | {API} is not supported for your Operating System. |
|-2604 | Failed to connect to the Proxy Service. Please make sure the Proxy Service is configured successfully, Dynamsoft Service is running, or the certificate is valid. |
|-2605 | The synchronized method {API} is not supported under the current settings. |
|-2606 | The asynchronized method {API} is not supported under the current settings. |
|-2607 | The device selected was not found under the current service object. |
|-2608 | IfShowFileDialog cannot be set to true when Object is created by CreateRemoteScanObjectAsync. |
|-2609 | LoadDibFromClipboard is not supported when Object is created by CreateRemoteScanObjectAsync. |
|-2610 | OpenSource is not supported when Object is created by CreateRemoteScanObjectAsync. Please use OpenSourceAsync instead. |
|-2613 | The Dynamsoft Service on [' + serviceName + '] has been stopped. |
|-2620 | The RemoteScan object has been disposed. |
|-2623 | Saving multiple images is not allowable when the selected output format is BMP, JPG or PNG. |
|-2825 | Failed to setup the Default Dynamsoft Service. |
|-2826 | Failed to connect the Dynamsoft Service on [' + name + ']. |

## Dynamsoft License Server Error List 

| Error Code | Error Message |
|:-|:-|
|-2611 | The license for the Barcode module is invalid. |


