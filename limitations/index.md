---
layout: default-layout
title: Limitations - Remote Scan
description: This is the main page of Limitations. 
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---

# Limitations

Though Remote Scan has a lot of benefits, it also has some limitations.

1. It is recommended to hide the scanner UI for scanning, because the scanner UI may not always be displayed successfully. 

2. We tested the maximum image capacity on different PC and mobile phones for your reference. Check the chart below.   

- 200 resolution grayscale, scan & save  

| Maximum Image Capacity| Windows10 CPU:i5-12400  RAM:32GB|SamsungS8+ CPU:MSM8998 RAM:4GB |iPhone13 CPU:A15 RAM:4GB |
 |:-|:-|:-|:-|
 | Chrome | 2000 | 500 | -|
 | Firefox | 2000 | 500|- |
 |Safari | - | - | 200 |
 
- 300 resolution grayscale, scan & save  

| Maximum Image Capacity| Windows10 CPU:i5-12400  RAM:32GB|SamsungS8+ CPU:MSM8998 RAM:4GB |iPhone13 CPU:A15 RAM:4GB|
|:-|:-|:-|:-|
| Chrome | 1000 |400| - |
| Firefox |1000 | 150 |-|
|Safari | - | -| 150|

<!--2.	<a href="https://www.dynamsoft.com/web-twain/docs/info/api/WebTwain_IO.html#ifshowfiledialog" target="_blank">IfShowFileDialog</a> cannot be set to true for security purposes. -->


<!--
1.	There is a default proxy network timeout limit of 300 seconds. For synchronous calls, if the created Dynamic Web TWAIN object is not used when the timeout limit is reached, a ‘service has been stopped’ error will occur. Therefore, it is recommended to use asynchronous APIs, as they will try to automatically reconnect.  
The timeout limit can be configured in C:\Windows\SysWOW64\Dynamsoft\DynamsoftServicex64_18\proxy\conf\nginx.conf. Dynamsoft Service needs to be restarted for the changes to the configuration to take effect. -->
