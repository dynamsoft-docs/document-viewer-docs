---
layout: default-layout
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
title: Dynamsoft Document Viewer Features
keywords: Documentation, Dynamsoft Document Viewer, Features
breadcrumbText: User Interface
description: Dynamsoft Document Viewer Documentation Features
permalink: /features/index.html
---

# Features

Generally, the features of DDV can be divided to two parts as below.

- Data management
- Viewers

## Data Management

Data management is to manage the data which is imported into DDV. 

How does DDV implement data management? First of all, there are two concepts which need to be introduced, document and page. 

Page can be understood as a page, currently an image, which is the smallest unit of managing data. Each page has a unique pageUid. 

And the pages are placed in the document. Each document also has its unique docUid, one document after another makes up the whole data. 

![Doc&Page](/assets/imgs/doc&page.png)

So manage data is to manage documents and pages.

- [Document management]({{ site.features }}datamanagement/docmanagement.html)
- [Page management]({{ site.features }}datamanagement/pagemanagement.html)

Actually, if you are using the default UI of DDV, the data management has been done internally.

## Viewers

Viewers are used to display the data. According to the different uses of viewers, DDV provides five different viewer types, which are implemented through five viewer classes.

- Edit Viewer
- Capture Viewer
- Perspective Viewer
- Browse Viewer
- Custom Viewer
- Data synchronisation between viewers
