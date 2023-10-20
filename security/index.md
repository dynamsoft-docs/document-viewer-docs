---
layout: default-layout
title: security - Remote Scan
description: This is the main page of security. 
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---

# Security

*	Proxy Service hides the IP addresses where the scanners are located. As a highly encapsulated system, Proxy Service hides the implementation details of the remote scan from users. This means that users do not have access to the IP addresses of the Bonjour Service and eSCL scanners when using the Proxy Service. This prevents users connected to the Proxy Service from accessing the scanner through other means, effectively preventing malicious attacks due to IP address leakage. 

*	Proxy Service can be accessed with the SSL certificate to achieve highly secure and reliable network transmission. Dynamsoft provides powerful SSL certificates for remote scanning to enable authentication of the communication parties and encryption of the communication process. In a word, users can access the Proxy Service on the Intranet from anywhere in the network in a secure and efficient manner.  
Note: Use  <a href="https://www.dynamsoft.com/web-twain/docs/info/api/Dynamsoft_WebTwainEnv.html#updatecert" target="_blank">UpdateCert</a> to automatically renew the certificate.

<!--
*	Bonjour Service is equipped with a comprehensive permission control mechanism. The Bonjour Service can choose whether the scanners or local files can be accessed by the Proxy Service. Bonjour's permission mechanism gives users more flexibility to configure their privacy and security on the Intranet.
-->
