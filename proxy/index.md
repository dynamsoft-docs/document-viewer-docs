---
layout: default-layout
title: Configure Proxy Service - Remote Scan
description: This is the main page of Configure Proxy Service. 
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---
# Configure Proxy Service 

Configure Proxy Service to allow users to access other Dynamsoft Service (with Bonjour Service enabled) on the Intranet. Make sure the Dynamsoft Service is installed before configuring.

<img src="../assets/imgs/image5.png" width="40%" height="40%">

1. Download <a href="https://www.dynamsoft.com/customer/download?product=dwt" target="_blank">DynamsoftProxyServerSetup</a> (Remote Scan Proxy Service).   

2. On Windows, run Install.cmd as an administrator. On macOS, install by double clicking. On Linux, install via the command line.

3. Access <a href="http://127.0.0.1:18625/admin/proxy.html" target="_blank"> http://127.0.0.1:18625/admin/proxy.html</a>
    1. Select Enable as a Proxy (Or Host) Service. You can also uncheck it to disable it.
    2. Set Host IP. If your IP is not listed, enter it manually.
    3. Set Port or SSL Port. Default value: Port 18602, SSL Port 18603.
    4. [Optional] ‘Add firewall exception’ is selected by default. On Windows, it will be added automatically. On macOS and Linux, administrators need to set them up manually.  
        - [Optional] Check host/port availability
        - [Optional] Bind Domain. Bind a specified domain to your IP. 
    5. [Optional] Choose File is used to import the downloaded certificate. If the SSL port is not configured, you don't need to import the SSL certificate. 
    6. Click UPDATE.

4. The Service will restart automatically. After a few seconds, visit http://IP:Port, if you can see the following page, it means that the Proxy Service configuration is successful.  
<img src="../assets/imgs/image6.png" width="100%" height="60%">

### <a href="{{site.build}}" target="_blank">Next</a>

